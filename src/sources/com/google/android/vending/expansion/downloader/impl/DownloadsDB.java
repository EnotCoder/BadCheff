package com.google.android.vending.expansion.downloader.impl;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.provider.BaseColumns;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadsDB {
    private static final int CONTROL_IDX = 7;
    private static final int CURRENTBYTES_IDX = 4;
    private static final String DATABASE_NAME = "DownloadsDB";
    private static final int DATABASE_VERSION = 7;
    private static final int ETAG_IDX = 2;
    private static final int FILENAME_IDX = 0;
    private static final int INDEX_IDX = 11;
    private static final int LASTMOD_IDX = 5;
    private static final int NUM_FAILED_IDX = 8;
    private static final int REDIRECT_COUNT_IDX = 10;
    private static final int RETRY_AFTER_IDX = 9;
    private static final int STATUS_IDX = 6;
    private static final int TOTALBYTES_IDX = 3;
    private static final int URI_IDX = 1;
    private static DownloadsDB mDownloadsDB;
    int mFlags;
    SQLiteStatement mGetDownloadByIndex;
    final SQLiteOpenHelper mHelper;
    long mMetadataRowID;
    int mStatus;
    SQLiteStatement mUpdateCurrentBytes;
    int mVersionCode;
    public static final String LOG_TAG = DownloadsDB.class.getName();
    private static final String[] DC_PROJECTION = {DownloadColumns.FILENAME, DownloadColumns.URI, DownloadColumns.ETAG, DownloadColumns.TOTALBYTES, DownloadColumns.CURRENTBYTES, DownloadColumns.LASTMOD, DownloadColumns.STATUS, DownloadColumns.CONTROL, DownloadColumns.NUM_FAILED, DownloadColumns.RETRY_AFTER, DownloadColumns.REDIRECT_COUNT, DownloadColumns.INDEX};

    public static class DownloadColumns implements BaseColumns {
        public static final String TABLE_NAME = "DownloadColumns";
        public static final String _ID = "DownloadColumns._id";
        public static final String INDEX = "FILEIDX";
        public static final String URI = "URI";
        public static final String FILENAME = "FN";
        public static final String ETAG = "ETAG";
        public static final String TOTALBYTES = "TOTALBYTES";
        public static final String CURRENTBYTES = "CURRENTBYTES";
        public static final String LASTMOD = "LASTMOD";
        public static final String STATUS = "STATUS";
        public static final String CONTROL = "CONTROL";
        public static final String NUM_FAILED = "FAILCOUNT";
        public static final String RETRY_AFTER = "RETRYAFTER";
        public static final String REDIRECT_COUNT = "REDIRECTCOUNT";
        public static final String[][] SCHEMA = {new String[]{"_id", "INTEGER PRIMARY KEY"}, new String[]{INDEX, "INTEGER UNIQUE"}, new String[]{URI, "TEXT"}, new String[]{FILENAME, "TEXT UNIQUE"}, new String[]{ETAG, "TEXT"}, new String[]{TOTALBYTES, "INTEGER"}, new String[]{CURRENTBYTES, "INTEGER"}, new String[]{LASTMOD, "INTEGER"}, new String[]{STATUS, "INTEGER"}, new String[]{CONTROL, "INTEGER"}, new String[]{NUM_FAILED, "INTEGER"}, new String[]{RETRY_AFTER, "INTEGER"}, new String[]{REDIRECT_COUNT, "INTEGER"}};
    }

    public static class MetadataColumns implements BaseColumns {
        public static final String APKVERSION = "APKVERSION";
        public static final String DOWNLOAD_STATUS = "DOWNLOADSTATUS";
        public static final String FLAGS = "DOWNLOADFLAGS";
        public static final String[][] SCHEMA = {new String[]{"_id", "INTEGER PRIMARY KEY"}, new String[]{APKVERSION, "INTEGER"}, new String[]{DOWNLOAD_STATUS, "INTEGER"}, new String[]{FLAGS, "INTEGER"}};
        public static final String TABLE_NAME = "MetadataColumns";
        public static final String _ID = "MetadataColumns._id";
    }

    public static synchronized DownloadsDB getDB(Context paramContext) {
        DownloadsDB downloadsDB = mDownloadsDB;
        if (downloadsDB != null) {
            return downloadsDB;
        }
        return new DownloadsDB(paramContext);
    }

    private SQLiteStatement getDownloadByIndexStatement() {
        if (this.mGetDownloadByIndex == null) {
            this.mGetDownloadByIndex = this.mHelper.getReadableDatabase().compileStatement("SELECT _id FROM DownloadColumns WHERE FILEIDX = ?");
        }
        return this.mGetDownloadByIndex;
    }

    private SQLiteStatement getUpdateCurrentBytesStatement() {
        if (this.mUpdateCurrentBytes == null) {
            this.mUpdateCurrentBytes = this.mHelper.getReadableDatabase().compileStatement("UPDATE DownloadColumns SET CURRENTBYTES = ? WHERE FILEIDX = ?");
        }
        return this.mUpdateCurrentBytes;
    }

    private DownloadsDB(Context paramContext) {
        this.mMetadataRowID = -1L;
        this.mVersionCode = -1;
        this.mStatus = -1;
        DownloadsContentDBHelper downloadsContentDBHelper = new DownloadsContentDBHelper(paramContext);
        this.mHelper = downloadsContentDBHelper;
        SQLiteDatabase sqldb = downloadsContentDBHelper.getReadableDatabase();
        Cursor cur = sqldb.rawQuery("SELECT APKVERSION,_id,DOWNLOADSTATUS,DOWNLOADFLAGS FROM MetadataColumns LIMIT 1", null);
        if (cur != null && cur.moveToFirst()) {
            this.mVersionCode = cur.getInt(0);
            this.mMetadataRowID = cur.getLong(1);
            this.mStatus = cur.getInt(2);
            this.mFlags = cur.getInt(3);
            cur.close();
        }
        mDownloadsDB = this;
    }

    protected DownloadInfo getDownloadInfoByFileName(String fileName) {
        SQLiteDatabase sqldb = this.mHelper.getReadableDatabase();
        Cursor itemcur = null;
        try {
            itemcur = sqldb.query(DownloadColumns.TABLE_NAME, DC_PROJECTION, "FN = ?", new String[]{fileName}, null, null, null);
            if (itemcur == null || !itemcur.moveToFirst()) {
            }
            return getDownloadInfoFromCursor(itemcur);
        } finally {
            if (itemcur != null) {
                itemcur.close();
            }
        }
    }

    public long getIDForDownloadInfo(DownloadInfo di) {
        return getIDByIndex(di.mIndex);
    }

    public long getIDByIndex(int index) {
        SQLiteStatement downloadByIndex = getDownloadByIndexStatement();
        downloadByIndex.clearBindings();
        downloadByIndex.bindLong(1, index);
        try {
            return downloadByIndex.simpleQueryForLong();
        } catch (SQLiteDoneException e) {
            return -1L;
        }
    }

    public void updateDownloadCurrentBytes(DownloadInfo di) {
        SQLiteStatement downloadCurrentBytes = getUpdateCurrentBytesStatement();
        downloadCurrentBytes.clearBindings();
        downloadCurrentBytes.bindLong(1, di.mCurrentBytes);
        downloadCurrentBytes.bindLong(2, di.mIndex);
        downloadCurrentBytes.execute();
    }

    public void close() {
        this.mHelper.close();
    }

    protected static class DownloadsContentDBHelper extends SQLiteOpenHelper {
        private static final String[][][] sSchemas = {DownloadColumns.SCHEMA, MetadataColumns.SCHEMA};
        private static final String[] sTables = {DownloadColumns.TABLE_NAME, MetadataColumns.TABLE_NAME};

        DownloadsContentDBHelper(Context paramContext) {
            super(paramContext, DownloadsDB.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 7);
        }

        private String createTableQueryFromArray(String paramString, String[][] paramArrayOfString) {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("CREATE TABLE ");
            localStringBuilder.append(paramString);
            localStringBuilder.append(" (");
            for (String[] arrayOfString : paramArrayOfString) {
                localStringBuilder.append(' ');
                localStringBuilder.append(arrayOfString[0]);
                localStringBuilder.append(' ');
                localStringBuilder.append(arrayOfString[1]);
                localStringBuilder.append(',');
            }
            localStringBuilder.setLength(localStringBuilder.length() - 1);
            localStringBuilder.append(");");
            return localStringBuilder.toString();
        }

        private void dropTables(SQLiteDatabase paramSQLiteDatabase) {
            for (String table : sTables) {
                try {
                    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + table);
                } catch (Exception localException) {
                    localException.printStackTrace();
                }
            }
        }

        /* JADX INFO: Infinite loop detected, blocks: 5, insns: 0 */
        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase paramSQLiteDatabase) {
            int numSchemas = sSchemas.length;
            for (int i = 0; i < numSchemas; i++) {
                try {
                    String[][] schema = sSchemas[i];
                    paramSQLiteDatabase.execSQL(createTableQueryFromArray(sTables[i], schema));
                } catch (Exception e) {
                    while (true) {
                        e.printStackTrace();
                    }
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {
            Log.w(DownloadsContentDBHelper.class.getName(), "Upgrading database from version " + paramInt1 + " to " + paramInt2 + ", which will destroy all old data");
            dropTables(paramSQLiteDatabase);
            onCreate(paramSQLiteDatabase);
        }
    }

    public boolean updateDownload(DownloadInfo di) {
        ContentValues cv = new ContentValues();
        cv.put(DownloadColumns.INDEX, Integer.valueOf(di.mIndex));
        cv.put(DownloadColumns.FILENAME, di.mFileName);
        cv.put(DownloadColumns.URI, di.mUri);
        cv.put(DownloadColumns.ETAG, di.mETag);
        cv.put(DownloadColumns.TOTALBYTES, Long.valueOf(di.mTotalBytes));
        cv.put(DownloadColumns.CURRENTBYTES, Long.valueOf(di.mCurrentBytes));
        cv.put(DownloadColumns.LASTMOD, Long.valueOf(di.mLastMod));
        cv.put(DownloadColumns.STATUS, Integer.valueOf(di.mStatus));
        cv.put(DownloadColumns.CONTROL, Integer.valueOf(di.mControl));
        cv.put(DownloadColumns.NUM_FAILED, Integer.valueOf(di.mNumFailed));
        cv.put(DownloadColumns.RETRY_AFTER, Integer.valueOf(di.mRetryAfter));
        cv.put(DownloadColumns.REDIRECT_COUNT, Integer.valueOf(di.mRedirectCount));
        return updateDownload(di, cv);
    }

    public boolean updateDownload(DownloadInfo di, ContentValues cv) {
        long id = di == null ? -1L : getIDForDownloadInfo(di);
        try {
            SQLiteDatabase sqldb = this.mHelper.getWritableDatabase();
            if (id == -1) {
                return -1 != sqldb.insert(DownloadColumns.TABLE_NAME, DownloadColumns.URI, cv);
            }
            sqldb.update(DownloadColumns.TABLE_NAME, cv, "DownloadColumns._id = " + id, null);
            return false;
        } catch (SQLiteException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public int getLastCheckedVersionCode() {
        return this.mVersionCode;
    }

    public boolean isDownloadRequired() {
        SQLiteDatabase sqldb = this.mHelper.getReadableDatabase();
        Cursor cur = sqldb.rawQuery("SELECT Count(*) FROM DownloadColumns WHERE STATUS <> 0", null);
        if (cur != null) {
            try {
                if (cur.moveToFirst()) {
                    return cur.getInt(0) == 0;
                }
            } finally {
                if (cur != null) {
                    cur.close();
                }
            }
        }
        return true;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public boolean updateFlags(int flags) {
        if (this.mFlags == flags) {
            return true;
        }
        ContentValues cv = new ContentValues();
        cv.put(MetadataColumns.FLAGS, Integer.valueOf(flags));
        if (updateMetadata(cv)) {
            this.mFlags = flags;
            return true;
        }
        return false;
    }

    public boolean updateStatus(int status) {
        if (this.mStatus == status) {
            return true;
        }
        ContentValues cv = new ContentValues();
        cv.put(MetadataColumns.DOWNLOAD_STATUS, Integer.valueOf(status));
        if (updateMetadata(cv)) {
            this.mStatus = status;
            return true;
        }
        return false;
    }

    public boolean updateMetadata(ContentValues cv) {
        SQLiteDatabase sqldb = this.mHelper.getWritableDatabase();
        if (-1 != this.mMetadataRowID) {
            return sqldb.update(MetadataColumns.TABLE_NAME, cv, new StringBuilder().append("_id = ").append(this.mMetadataRowID).toString(), null) != 0;
        }
        long newID = sqldb.insert(MetadataColumns.TABLE_NAME, MetadataColumns.APKVERSION, cv);
        if (-1 == newID) {
            return false;
        }
        this.mMetadataRowID = newID;
        return true;
    }

    public boolean updateMetadata(int apkVersion, int downloadStatus) {
        ContentValues cv = new ContentValues();
        cv.put(MetadataColumns.APKVERSION, Integer.valueOf(apkVersion));
        cv.put(MetadataColumns.DOWNLOAD_STATUS, Integer.valueOf(downloadStatus));
        if (updateMetadata(cv)) {
            this.mVersionCode = apkVersion;
            this.mStatus = downloadStatus;
            return true;
        }
        return false;
    }

    public boolean updateFromDb(DownloadInfo di) {
        SQLiteDatabase sqldb = this.mHelper.getReadableDatabase();
        Cursor cur = null;
        try {
            cur = sqldb.query(DownloadColumns.TABLE_NAME, DC_PROJECTION, "FN= ?", new String[]{di.mFileName}, null, null, null);
            if (cur == null || !cur.moveToFirst()) {
                return false;
            }
            setDownloadInfoFromCursor(di, cur);
            return true;
        } finally {
            if (cur != null) {
                cur.close();
            }
        }
    }

    public void setDownloadInfoFromCursor(DownloadInfo di, Cursor cur) {
        di.mUri = cur.getString(1);
        di.mETag = cur.getString(2);
        di.mTotalBytes = cur.getLong(3);
        di.mCurrentBytes = cur.getLong(4);
        di.mLastMod = cur.getLong(5);
        di.mStatus = cur.getInt(6);
        di.mControl = cur.getInt(7);
        di.mNumFailed = cur.getInt(8);
        di.mRetryAfter = cur.getInt(9);
        di.mRedirectCount = cur.getInt(10);
    }

    public DownloadInfo getDownloadInfoFromCursor(Cursor cur) {
        DownloadInfo di = new DownloadInfo(cur.getInt(11), cur.getString(0), getClass().getPackage().getName());
        setDownloadInfoFromCursor(di, cur);
        return di;
    }

    public DownloadInfo[] getDownloads() {
        SQLiteDatabase sqldb = this.mHelper.getReadableDatabase();
        Cursor cur = null;
        try {
            cur = sqldb.query(DownloadColumns.TABLE_NAME, DC_PROJECTION, null, null, null, null, null);
            if (cur == null || !cur.moveToFirst()) {
            }
            DownloadInfo[] retInfos = new DownloadInfo[cur.getCount()];
            int idx = 0;
            while (true) {
                DownloadInfo di = getDownloadInfoFromCursor(cur);
                int idx2 = idx + 1;
                retInfos[idx] = di;
                if (!cur.moveToNext()) {
                    break;
                }
                idx = idx2;
            }
            return retInfos;
        } finally {
            if (cur != null) {
                cur.close();
            }
        }
    }
}
