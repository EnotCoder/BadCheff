package org.godotengine.godot.io.file;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.io.StorageScope;

/* JADX INFO: compiled from: FileAccessHandler.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 82\u00020\u0001:\u00018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bJ\u0010\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u000bJ\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u000bJ\u0010\u0010\u001d\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u001f\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00132\u0006\u0010 \u001a\u00020\u000bJ-\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000b0!2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00132\b\u0010#\u001a\u0004\u0018\u00010$H\u0000¢\u0006\u0002\b%J\u0018\u0010&\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010(J\u0016\u0010)\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u001bJ\u0016\u0010+\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u001bJ\u0016\u0010-\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u001bJ\u0018\u0010.\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010(J\u0012\u0010/\u001a\u0004\u0018\u0001002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0013J\u0010\u00101\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u000e\u00102\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000bJ\u0016\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00132\u0006\u00105\u001a\u00020\u0013J\u0016\u00106\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u00069"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessHandler;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "files", "Landroid/util/SparseArray;", "Lorg/godotengine/godot/io/file/DataAccess;", "lastFileId", "", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "getStorageScopeIdentifier$lib_templateDebug", "()Lorg/godotengine/godot/io/StorageScope$Identifier;", "canAccess", "", "filePath", "", "fileClose", "", "fileId", "fileExists", "path", "fileFlush", "fileGetPosition", "", "fileGetSize", "fileLastModified", "filepath", "fileOpen", "modeFlags", "Lkotlin/Pair;", "Lorg/godotengine/godot/error/Error;", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "fileOpen$lib_templateDebug", "fileRead", "byteBuffer", "Ljava/nio/ByteBuffer;", "fileResize", "length", "fileSeek", "position", "fileSeekFromEnd", "fileWrite", "getInputStream", "Ljava/io/InputStream;", "hasFileId", "isFileEof", "renameFile", "from", "to", "setFileEof", "eof", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileAccessHandler {
    private static final int INVALID_FILE_ID = 0;
    private static final int STARTING_FILE_ID = 1;
    private final Context context;
    private final SparseArray<DataAccess> files;
    private int lastFileId;
    private final StorageScope.Identifier storageScopeIdentifier;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = FileAccessHandler.class.getSimpleName();
    private static final Pair<Error, Integer> FILE_OPEN_FAILED = new Pair<>(Error.FAILED, 0);

    public FileAccessHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.storageScopeIdentifier = new StorageScope.Identifier(context);
        this.files = new SparseArray<>();
        this.lastFileId = 1;
    }

    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: compiled from: FileAccessHandler.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0000¢\u0006\u0002\b\u0013J)\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0000¢\u0006\u0002\b\u0016J'\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0000¢\u0006\u0002\b\u0018J-\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nH\u0000¢\u0006\u0002\b\u001cR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;", "", "()V", "FILE_OPEN_FAILED", "Lkotlin/Pair;", "Lorg/godotengine/godot/error/Error;", "", "INVALID_FILE_ID", "STARTING_FILE_ID", "TAG", "", "kotlin.jvm.PlatformType", "fileExists", "", "context", "Landroid/content/Context;", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "path", "fileExists$lib_templateDebug", "getInputStream", "Ljava/io/InputStream;", "getInputStream$lib_templateDebug", "removeFile", "removeFile$lib_templateDebug", "renameFile", "from", "to", "renameFile$lib_templateDebug", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final InputStream getInputStream$lib_templateDebug(Context context, StorageScope.Identifier storageScopeIdentifier, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            StorageScope storageScope = storageScopeIdentifier.identifyStorageScope(path);
            if (path == null) {
                return null;
            }
            try {
                return DataAccess.INSTANCE.getInputStream(storageScope, context, path);
            } catch (Exception e) {
                return null;
            }
        }

        public final boolean fileExists$lib_templateDebug(Context context, StorageScope.Identifier storageScopeIdentifier, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            StorageScope storageScope = storageScopeIdentifier.identifyStorageScope(path);
            if (storageScope == StorageScope.UNKNOWN || path == null) {
                return false;
            }
            try {
                return DataAccess.INSTANCE.fileExists(storageScope, context, path);
            } catch (SecurityException e) {
                return false;
            }
        }

        public final boolean removeFile$lib_templateDebug(Context context, StorageScope.Identifier storageScopeIdentifier, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            StorageScope storageScope = storageScopeIdentifier.identifyStorageScope(path);
            if (storageScope == StorageScope.UNKNOWN || path == null) {
                return false;
            }
            try {
                return DataAccess.INSTANCE.removeFile(storageScope, context, path);
            } catch (Exception e) {
                return false;
            }
        }

        public final boolean renameFile$lib_templateDebug(Context context, StorageScope.Identifier storageScopeIdentifier, String from, String to) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(storageScopeIdentifier, "storageScopeIdentifier");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            StorageScope storageScope = storageScopeIdentifier.identifyStorageScope(from);
            if (storageScope == StorageScope.UNKNOWN) {
                return false;
            }
            try {
                return DataAccess.INSTANCE.renameFile(storageScope, context, from, to);
            } catch (Exception e) {
                return false;
            }
        }
    }

    /* JADX INFO: renamed from: getStorageScopeIdentifier$lib_templateDebug, reason: from getter */
    public final StorageScope.Identifier getStorageScopeIdentifier() {
        return this.storageScopeIdentifier;
    }

    private final boolean hasFileId(int fileId) {
        return this.files.indexOfKey(fileId) >= 0;
    }

    public final boolean canAccess(String filePath) {
        return this.storageScopeIdentifier.canAccess(filePath);
    }

    public final int fileOpen(String path, int modeFlags) {
        Pair<Error, Integer> pairFileOpen$lib_templateDebug = fileOpen$lib_templateDebug(path, FileAccessFlags.INSTANCE.fromNativeModeFlags(modeFlags));
        Error fileError = pairFileOpen$lib_templateDebug.component1();
        int fileId = pairFileOpen$lib_templateDebug.component2().intValue();
        if (fileError == Error.OK) {
            return fileId;
        }
        return -fileError.toNativeValue();
    }

    public final Pair<Error, Integer> fileOpen$lib_templateDebug(String path, FileAccessFlags accessFlag) {
        if (accessFlag == null) {
            return FILE_OPEN_FAILED;
        }
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(path);
        if (storageScope == StorageScope.UNKNOWN) {
            return FILE_OPEN_FAILED;
        }
        try {
            if (path != null) {
                DataAccess dataAccess = DataAccess.INSTANCE.generateDataAccess(storageScope, this.context, path, accessFlag);
                if (dataAccess == null) {
                    return FILE_OPEN_FAILED;
                }
                SparseArray<DataAccess> sparseArray = this.files;
                int i = this.lastFileId + 1;
                this.lastFileId = i;
                sparseArray.put(i, dataAccess);
                return new Pair<>(Error.OK, Integer.valueOf(this.lastFileId));
            }
            return FILE_OPEN_FAILED;
        } catch (FileNotFoundException e) {
            return new Pair<>(Error.ERR_FILE_NOT_FOUND, 0);
        } catch (UnsupportedOperationException e2) {
            return new Pair<>(Error.ERR_UNAVAILABLE, 0);
        } catch (Exception e3) {
            Log.w(TAG, "Error while opening " + path, e3);
            return FILE_OPEN_FAILED;
        }
    }

    public final long fileGetSize(int fileId) {
        if (!hasFileId(fileId)) {
            return 0L;
        }
        return this.files.get(fileId).size();
    }

    public final void fileSeek(int fileId, long position) {
        if (!hasFileId(fileId)) {
            return;
        }
        this.files.get(fileId).seek(position);
    }

    public final void fileSeekFromEnd(int fileId, long position) {
        if (!hasFileId(fileId)) {
            return;
        }
        this.files.get(fileId).seekFromEnd(position);
    }

    public final int fileRead(int fileId, ByteBuffer byteBuffer) {
        if (!hasFileId(fileId) || byteBuffer == null) {
            return 0;
        }
        return this.files.get(fileId).read(byteBuffer);
    }

    public final boolean fileWrite(int fileId, ByteBuffer byteBuffer) {
        if (!hasFileId(fileId) || byteBuffer == null) {
            return false;
        }
        return this.files.get(fileId).write(byteBuffer);
    }

    public final void fileFlush(int fileId) {
        if (!hasFileId(fileId)) {
            return;
        }
        this.files.get(fileId).flush();
    }

    public final InputStream getInputStream(String path) {
        return INSTANCE.getInputStream$lib_templateDebug(this.context, this.storageScopeIdentifier, path);
    }

    public final boolean renameFile(String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        return INSTANCE.renameFile$lib_templateDebug(this.context, this.storageScopeIdentifier, from, to);
    }

    public final boolean fileExists(String path) {
        return INSTANCE.fileExists$lib_templateDebug(this.context, this.storageScopeIdentifier, path);
    }

    public final long fileLastModified(String filepath) {
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(filepath);
        if (storageScope == StorageScope.UNKNOWN || filepath == null) {
            return 0L;
        }
        try {
            return DataAccess.INSTANCE.fileLastModified(storageScope, this.context, filepath);
        } catch (SecurityException e) {
            return 0L;
        }
    }

    public final int fileResize(int fileId, long length) {
        if (!hasFileId(fileId)) {
            return Error.FAILED.toNativeValue();
        }
        return this.files.get(fileId).resize(length).toNativeValue();
    }

    public final long fileGetPosition(int fileId) {
        if (!hasFileId(fileId)) {
            return 0L;
        }
        return this.files.get(fileId).position();
    }

    public final boolean isFileEof(int fileId) {
        if (!hasFileId(fileId)) {
            return false;
        }
        return this.files.get(fileId).getEndOfFile();
    }

    public final void setFileEof(int fileId, boolean eof) {
        DataAccess file = this.files.get(fileId);
        if (file == null) {
            return;
        }
        file.setEndOfFile$lib_templateDebug(eof);
    }

    public final void fileClose(int fileId) {
        if (hasFileId(fileId)) {
            this.files.get(fileId).close();
            this.files.remove(fileId);
        }
    }
}
