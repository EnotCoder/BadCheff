package org.godotengine.godot.io.file;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MediaStoreData.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lorg/godotengine/godot/io/file/MediaStoreData;", "Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;", "context", "Landroid/content/Context;", "filePath", "", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V", "fileChannel", "Ljava/nio/channels/FileChannel;", "getFileChannel$lib_templateDebug", "()Ljava/nio/channels/FileChannel;", "id", "", "uri", "Landroid/net/Uri;", "Companion", "DataItem", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MediaStoreData extends DataAccess.FileChannelDataAccess {
    private static final String AUTHORITY_DOWNLOADS_DOCUMENTS = "com.android.providers.downloads.documents";
    private static final String AUTHORITY_EXTERNAL_STORAGE_DOCUMENTS = "com.android.externalstorage.documents";
    private static final String AUTHORITY_MEDIA_DOCUMENTS = "com.android.providers.media.documents";
    private static final String SELECTION_BY_ID = "_id = ? ";
    private static final String SELECTION_BY_PATH = "_display_name = ?  AND relative_path = ?";
    private final FileChannel fileChannel;
    private final long id;
    private final Uri uri;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = MediaStoreData.class.getSimpleName();
    private static final Uri COLLECTION = MediaStore.Files.getContentUri("external_primary");
    private static final String[] PROJECTION = {"_id", "_display_name", "relative_path", "_size", "date_modified", "media_type"};

    /* JADX INFO: compiled from: MediaStoreData.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FileAccessFlags.values().length];
            try {
                iArr[FileAccessFlags.READ.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[FileAccessFlags.WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[FileAccessFlags.READ_WRITE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[FileAccessFlags.WRITE_READ.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaStoreData(Context context, String filePath, FileAccessFlags accessFlag) throws IOException {
        DataItem dataItem;
        FileChannel channel;
        super(filePath);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
        ContentResolver contentResolver = context.getContentResolver();
        Companion companion = INSTANCE;
        List dataItems = companion.queryByPath(context, filePath);
        switch (WhenMappings.$EnumSwitchMapping$0[accessFlag.ordinal()]) {
            case 1:
                if (dataItems.isEmpty()) {
                    throw new FileNotFoundException("Unable to access file " + filePath);
                }
                dataItem = (DataItem) dataItems.get(0);
                break;
                break;
            case 2:
            case 3:
            case 4:
                if (dataItems.isEmpty()) {
                    dataItem = companion.addFile(context, filePath);
                } else {
                    dataItem = (DataItem) dataItems.get(0);
                }
                if (dataItem == null) {
                    throw new FileNotFoundException("Unable to access file " + filePath);
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        this.id = dataItem.getId();
        Uri uri = dataItem.getUri();
        this.uri = uri;
        ParcelFileDescriptor parcelFileDescriptor = contentResolver.openFileDescriptor(uri, accessFlag.getMode());
        if (parcelFileDescriptor == null) {
            throw new IllegalStateException("Unable to access file descriptor");
        }
        if (accessFlag == FileAccessFlags.READ) {
            channel = new FileInputStream(parcelFileDescriptor.getFileDescriptor()).getChannel();
            Intrinsics.checkNotNull(channel);
        } else {
            channel = new FileOutputStream(parcelFileDescriptor.getFileDescriptor()).getChannel();
            Intrinsics.checkNotNull(channel);
        }
        this.fileChannel = channel;
        if (!accessFlag.shouldTruncate()) {
            return;
        }
        getFileChannel().truncate(0L);
    }

    /* JADX INFO: compiled from: MediaStoreData.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J\t\u0010\u001f\u001a\u00020\nHÆ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\nHÖ\u0001J\t\u0010%\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;", "", "id", "", "uri", "Landroid/net/Uri;", "displayName", "", "relativePath", "size", "", "dateModified", "mediaType", "(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V", "getDateModified", "()I", "getDisplayName", "()Ljava/lang/String;", "getId", "()J", "getMediaType", "getRelativePath", "getSize", "getUri", "()Landroid/net/Uri;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class DataItem {
        private final int dateModified;
        private final String displayName;
        private final long id;
        private final int mediaType;
        private final String relativePath;
        private final int size;
        private final Uri uri;

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final long getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Uri getUri() {
            return this.uri;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getDisplayName() {
            return this.displayName;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getRelativePath() {
            return this.relativePath;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getDateModified() {
            return this.dateModified;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getMediaType() {
            return this.mediaType;
        }

        public final DataItem copy(long id, Uri uri, String displayName, String relativePath, int size, int dateModified, int mediaType) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            return new DataItem(id, uri, displayName, relativePath, size, dateModified, mediaType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DataItem)) {
                return false;
            }
            DataItem dataItem = (DataItem) other;
            return this.id == dataItem.id && Intrinsics.areEqual(this.uri, dataItem.uri) && Intrinsics.areEqual(this.displayName, dataItem.displayName) && Intrinsics.areEqual(this.relativePath, dataItem.relativePath) && this.size == dataItem.size && this.dateModified == dataItem.dateModified && this.mediaType == dataItem.mediaType;
        }

        public int hashCode() {
            return (((((((((((MediaStoreData$DataItem$$ExternalSyntheticBackport0.m(this.id) * 31) + this.uri.hashCode()) * 31) + this.displayName.hashCode()) * 31) + this.relativePath.hashCode()) * 31) + this.size) * 31) + this.dateModified) * 31) + this.mediaType;
        }

        public String toString() {
            return "DataItem(id=" + this.id + ", uri=" + this.uri + ", displayName=" + this.displayName + ", relativePath=" + this.relativePath + ", size=" + this.size + ", dateModified=" + this.dateModified + ", mediaType=" + this.mediaType + ")";
        }

        public DataItem(long id, Uri uri, String displayName, String relativePath, int size, int dateModified, int mediaType) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            this.id = id;
            this.uri = uri;
            this.displayName = displayName;
            this.relativePath = relativePath;
            this.size = size;
            this.dateModified = dateModified;
            this.mediaType = mediaType;
        }

        public final long getId() {
            return this.id;
        }

        public final Uri getUri() {
            return this.uri;
        }

        public final String getDisplayName() {
            return this.displayName;
        }

        public final String getRelativePath() {
            return this.relativePath;
        }

        public final int getSize() {
            return this.size;
        }

        public final int getDateModified() {
            return this.dateModified;
        }

        public final int getMediaType() {
            return this.mediaType;
        }
    }

    /* JADX INFO: compiled from: MediaStoreData.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0018\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0016\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\bJ\u0012\u0010!\u001a\u0004\u0018\u00010\u00042\u0006\u0010 \u001a\u00020\bH\u0002J\u0018\u0010\"\u001a\n \t*\u0004\u0018\u00010\u00040\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u001b\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b2\u0006\u0010%\u001a\u00020\u001eH\u0002¢\u0006\u0002\u0010&J\u001b\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010(J\u0018\u0010)\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\u0004J\u001e\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00110\u00162\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u001eH\u0002J\u001e\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00110\u00162\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u001e\u0010-\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lorg/godotengine/godot/io/file/MediaStoreData$Companion;", "", "()V", "AUTHORITY_DOWNLOADS_DOCUMENTS", "", "AUTHORITY_EXTERNAL_STORAGE_DOCUMENTS", "AUTHORITY_MEDIA_DOCUMENTS", "COLLECTION", "Landroid/net/Uri;", "kotlin.jvm.PlatformType", "PROJECTION", "", "[Ljava/lang/String;", "SELECTION_BY_ID", "SELECTION_BY_PATH", "TAG", "addFile", "Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;", "context", "Landroid/content/Context;", "path", "dataItemFromCursor", "", "query", "Landroid/database/Cursor;", "delete", "", "directoryExists", "fileExists", "fileLastModified", "", "getFilePathFromUri", "uri", "getIdFromUri", "getMediaStoreDisplayName", "getMediaStoreRelativePath", "getSelectionByIdArgument", "id", "(J)[Ljava/lang/String;", "getSelectionByPathArguments", "(Ljava/lang/String;)[Ljava/lang/String;", "getUriFromDirectoryPath", "directoryPath", "queryById", "queryByPath", "rename", "from", "to", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final String[] getSelectionByPathArguments(String path) {
            String mediaStoreDisplayName = getMediaStoreDisplayName(path);
            Intrinsics.checkNotNullExpressionValue(mediaStoreDisplayName, "getMediaStoreDisplayName(...)");
            return new String[]{mediaStoreDisplayName, getMediaStoreRelativePath(path)};
        }

        private final String[] getSelectionByIdArgument(long id) {
            return new String[]{String.valueOf(id)};
        }

        private final String getMediaStoreDisplayName(String path) {
            return new File(path).getName();
        }

        /* JADX WARN: Code duplicated, block: B:6:0x0023  */
        private final String getMediaStoreRelativePath(String path) {
            String strReplace$default;
            File pathFile = new File(path);
            File environmentDir = Environment.getExternalStorageDirectory();
            String parent = pathFile.getParent();
            if (parent != null) {
                String absolutePath = environmentDir.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                strReplace$default = StringsKt.replace$default(parent, absolutePath, "", false, 4, (Object) null);
                if (strReplace$default == null) {
                    strReplace$default = "";
                }
            } else {
                strReplace$default = "";
            }
            String relativePath = StringsKt.trim(strReplace$default, '/');
            if (true ^ StringsKt.isBlank(relativePath)) {
                return relativePath + "/";
            }
            return relativePath;
        }

        private final List<DataItem> queryById(Context context, long id) {
            Cursor query = context.getContentResolver().query(MediaStoreData.COLLECTION, MediaStoreData.PROJECTION, MediaStoreData.SELECTION_BY_ID, getSelectionByIdArgument(id), null);
            return dataItemFromCursor(query);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<DataItem> queryByPath(Context context, String path) {
            Cursor query = context.getContentResolver().query(MediaStoreData.COLLECTION, MediaStoreData.PROJECTION, MediaStoreData.SELECTION_BY_PATH, getSelectionByPathArguments(path), null);
            return dataItemFromCursor(query);
        }

        private final List<DataItem> dataItemFromCursor(Cursor query) throws IOException {
            String str = "getString(...)";
            if (query != null) {
                Cursor cursor = query;
                try {
                    Cursor cursor2 = cursor;
                    int i = 0;
                    cursor2.getCount();
                    if (cursor2.getCount() == 0) {
                        List<DataItem> listEmptyList = CollectionsKt.emptyList();
                        CloseableKt.closeFinally(cursor, null);
                        return listEmptyList;
                    }
                    int idColumn = cursor2.getColumnIndexOrThrow("_id");
                    int displayNameColumn = cursor2.getColumnIndexOrThrow("_display_name");
                    int relativePathColumn = cursor2.getColumnIndexOrThrow("relative_path");
                    int sizeColumn = cursor2.getColumnIndexOrThrow("_size");
                    int dateModifiedColumn = cursor2.getColumnIndexOrThrow("date_modified");
                    int mediaTypeColumn = cursor2.getColumnIndexOrThrow("media_type");
                    ArrayList result = new ArrayList();
                    while (cursor2.moveToNext()) {
                        long id = cursor2.getLong(idColumn);
                        Uri uriWithAppendedId = ContentUris.withAppendedId(MediaStoreData.COLLECTION, id);
                        Intrinsics.checkNotNullExpressionValue(uriWithAppendedId, "withAppendedId(...)");
                        String string = cursor2.getString(displayNameColumn);
                        Intrinsics.checkNotNullExpressionValue(string, str);
                        int i2 = i;
                        String string2 = cursor2.getString(relativePathColumn);
                        Intrinsics.checkNotNullExpressionValue(string2, str);
                        result.add(new DataItem(id, uriWithAppendedId, string, string2, cursor2.getInt(sizeColumn), cursor2.getInt(dateModifiedColumn), cursor2.getInt(mediaTypeColumn)));
                        i = i2;
                        str = str;
                    }
                    ArrayList arrayList = result;
                    CloseableKt.closeFinally(cursor, null);
                    return arrayList;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(cursor, th);
                        throw th2;
                    }
                }
            }
            return CollectionsKt.emptyList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DataItem addFile(Context context, String path) {
            ContentValues fileDetails = new ContentValues();
            fileDetails.put("_id", (Integer) 0);
            fileDetails.put("_display_name", MediaStoreData.INSTANCE.getMediaStoreDisplayName(path));
            fileDetails.put("relative_path", MediaStoreData.INSTANCE.getMediaStoreRelativePath(path));
            if (context.getContentResolver().insert(MediaStoreData.COLLECTION, fileDetails) == null) {
                return null;
            }
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return null;
            }
            return listQueryByPath.get(0);
        }

        public final boolean delete(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return false;
            }
            ContentResolver resolver = context.getContentResolver();
            int itemsDeleted = 0;
            for (DataItem item : listQueryByPath) {
                itemsDeleted += resolver.delete(item.getUri(), null, null);
            }
            return itemsDeleted > 0;
        }

        public final boolean fileExists(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            return !queryByPath(context, path).isEmpty();
        }

        public final long fileLastModified(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            List<DataItem> listQueryByPath = queryByPath(context, path);
            if (listQueryByPath.isEmpty()) {
                return 0L;
            }
            DataItem dataItem = listQueryByPath.get(0);
            return ((long) dataItem.getDateModified()) / 1000;
        }

        public final boolean rename(Context context, String from, String to) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            List<DataItem> listQueryByPath = queryByPath(context, from);
            if (listQueryByPath.isEmpty()) {
                return false;
            }
            DataItem source = listQueryByPath.get(0);
            ContentValues updatedDetails = new ContentValues();
            updatedDetails.put("_display_name", MediaStoreData.INSTANCE.getMediaStoreDisplayName(to));
            updatedDetails.put("relative_path", MediaStoreData.INSTANCE.getMediaStoreRelativePath(to));
            int updated = context.getContentResolver().update(source.getUri(), updatedDetails, MediaStoreData.SELECTION_BY_ID, getSelectionByIdArgument(source.getId()));
            return updated > 0;
        }

        public final Uri getUriFromDirectoryPath(Context context, String directoryPath) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(directoryPath, "directoryPath");
            if (!directoryExists(directoryPath)) {
                return null;
            }
            String externalStorageRoot = Environment.getExternalStorageDirectory().getAbsolutePath();
            Intrinsics.checkNotNull(externalStorageRoot);
            if (!StringsKt.startsWith$default(directoryPath, externalStorageRoot, false, 2, (Object) null)) {
                return null;
            }
            String relativePath = StringsKt.trim(StringsKt.replaceFirst$default(directoryPath, externalStorageRoot, "", false, 4, (Object) null), '/');
            Uri uri = new Uri.Builder().scheme("content").authority(MediaStoreData.AUTHORITY_EXTERNAL_STORAGE_DOCUMENTS).appendPath("document").appendPath("primary:" + relativePath).build();
            return uri;
        }

        public final String getFilePathFromUri(Context context, Uri uri) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(uri, "uri");
            String id = getIdFromUri(uri);
            if (id == null) {
                return null;
            }
            if (Intrinsics.areEqual(uri.getAuthority(), MediaStoreData.AUTHORITY_EXTERNAL_STORAGE_DOCUMENTS)) {
                List split = StringsKt.split$default((CharSequence) id, new String[]{":"}, false, 0, 6, (Object) null);
                String fileName = (String) CollectionsKt.last(split);
                String relativePath = CollectionsKt.joinToString$default(CollectionsKt.dropLast(split, 1), "/", null, null, 0, null, null, 62, null);
                String fullPath = new File(Environment.getExternalStorageDirectory(), relativePath + "/" + fileName).getAbsolutePath();
                return fullPath;
            }
            Long longOrNull = StringsKt.toLongOrNull(id);
            if (longOrNull == null) {
                return null;
            }
            List<DataItem> listQueryById = queryById(context, longOrNull.longValue());
            if (!(true ^ listQueryById.isEmpty())) {
                return null;
            }
            DataItem dataItem = listQueryById.get(0);
            return new File(Environment.getExternalStorageDirectory(), new File(dataItem.getRelativePath(), dataItem.getDisplayName()).toString()).getAbsolutePath();
        }

        private final String getIdFromUri(Uri uri) {
            try {
                if (!Intrinsics.areEqual(uri.getAuthority(), MediaStoreData.AUTHORITY_EXTERNAL_STORAGE_DOCUMENTS) && !Intrinsics.areEqual(uri.getAuthority(), MediaStoreData.AUTHORITY_MEDIA_DOCUMENTS) && !Intrinsics.areEqual(uri.getAuthority(), MediaStoreData.AUTHORITY_DOWNLOADS_DOCUMENTS)) {
                    throw new IllegalArgumentException("Unsupported URI format: " + uri);
                }
                String documentId = uri.getLastPathSegment();
                if (documentId != null) {
                    return StringsKt.substringAfter$default(documentId, ":", (String) null, 2, (Object) null);
                }
                throw new IllegalArgumentException("Invalid URI: " + uri);
            } catch (Exception e) {
                Log.d(MediaStoreData.TAG, "Failed to parse ID from URI: " + uri, e);
                return null;
            }
        }

        private final boolean directoryExists(String path) {
            try {
                File file = new File(path);
                return file.isDirectory() && file.exists();
            } catch (SecurityException e) {
                Log.d(MediaStoreData.TAG, "Failed to check directoryExists: " + path, e);
                return false;
            }
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess.FileChannelDataAccess
    /* JADX INFO: renamed from: getFileChannel$lib_templateDebug, reason: from getter */
    public FileChannel getFileChannel() {
        return this.fileChannel;
    }
}
