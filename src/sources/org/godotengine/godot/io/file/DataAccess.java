package org.godotengine.godot.io.file;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.NonWritableChannelException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.io.StorageScope;

/* JADX INFO: compiled from: DataAccess.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b \u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\nH&J\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rH&J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH&J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rJ\b\u0010\u0018\u001a\u00020\rH&J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H&R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u001c"}, d2 = {"Lorg/godotengine/godot/io/file/DataAccess;", "", "()V", "endOfFile", "", "getEndOfFile$lib_templateDebug", "()Z", "setEndOfFile$lib_templateDebug", "(Z)V", "close", "", "flush", "position", "", "read", "", "buffer", "Ljava/nio/ByteBuffer;", "resize", "Lorg/godotengine/godot/error/Error;", "length", "seek", "seekFromEnd", "positionFromEnd", "size", "write", "Companion", "FileChannelDataAccess", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class DataAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = DataAccess.class.getSimpleName();
    private boolean endOfFile;

    public abstract void close();

    public abstract void flush();

    /* JADX INFO: renamed from: position */
    public abstract long getPosition();

    public abstract int read(ByteBuffer buffer);

    public abstract Error resize(long length);

    public abstract void seek(long position);

    /* JADX INFO: renamed from: size */
    public abstract long getLength();

    public abstract boolean write(ByteBuffer buffer);

    /* JADX INFO: compiled from: DataAccess.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J(\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J&\u0010\u0017\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lorg/godotengine/godot/io/file/DataAccess$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "fileExists", "", "storageScope", "Lorg/godotengine/godot/io/StorageScope;", "context", "Landroid/content/Context;", "path", "fileLastModified", "", "generateDataAccess", "Lorg/godotengine/godot/io/file/DataAccess;", "filePath", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "getInputStream", "Ljava/io/InputStream;", "removeFile", "renameFile", "from", "to", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: DataAccess.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[StorageScope.values().length];
                try {
                    iArr[StorageScope.ASSETS.ordinal()] = 1;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[StorageScope.APP.ordinal()] = 2;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[StorageScope.SHARED.ordinal()] = 3;
                } catch (NoSuchFieldError e3) {
                }
                try {
                    iArr[StorageScope.UNKNOWN.ordinal()] = 4;
                } catch (NoSuchFieldError e4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final InputStream getInputStream(StorageScope storageScope, Context context, String filePath) throws Exception {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                case 1:
                    AssetData assetData = new AssetData(context, filePath, FileAccessFlags.READ);
                    return Channels.newInputStream(assetData.getReadChannel());
                case 2:
                    FileData fileData = new FileData(filePath, FileAccessFlags.READ);
                    return Channels.newInputStream(fileData.getFileChannel());
                case 3:
                    if (Build.VERSION.SDK_INT < 29) {
                        return null;
                    }
                    MediaStoreData mediaStoreData = new MediaStoreData(context, filePath, FileAccessFlags.READ);
                    return Channels.newInputStream(mediaStoreData.getFileChannel());
                case 4:
                    return null;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final DataAccess generateDataAccess(StorageScope storageScope, Context context, String filePath, FileAccessFlags accessFlag) throws Exception {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
            switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                case 1:
                    return new AssetData(context, filePath, accessFlag);
                case 2:
                    return new FileData(filePath, accessFlag);
                case 3:
                    return Build.VERSION.SDK_INT >= 29 ? new MediaStoreData(context, filePath, accessFlag) : null;
                case 4:
                    return null;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final boolean fileExists(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                case 1:
                    return AssetData.INSTANCE.fileExists(context, path);
                case 2:
                    return FileData.INSTANCE.fileExists(path);
                case 3:
                    if (Build.VERSION.SDK_INT >= 29) {
                        return MediaStoreData.INSTANCE.fileExists(context, path);
                    }
                    return false;
                case 4:
                    return false;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final long fileLastModified(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                case 1:
                    return AssetData.INSTANCE.fileLastModified(path);
                case 2:
                    return FileData.INSTANCE.fileLastModified(path);
                case 3:
                    if (Build.VERSION.SDK_INT >= 29) {
                        return MediaStoreData.INSTANCE.fileLastModified(context, path);
                    }
                    return 0L;
                case 4:
                    return 0L;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final boolean removeFile(StorageScope storageScope, Context context, String path) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                case 1:
                    return AssetData.INSTANCE.delete(path);
                case 2:
                    return FileData.INSTANCE.delete(path);
                case 3:
                    if (Build.VERSION.SDK_INT >= 29) {
                        return MediaStoreData.INSTANCE.delete(context, path);
                    }
                    return false;
                case 4:
                    return false;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final boolean renameFile(StorageScope storageScope, Context context, String from, String to) {
            Intrinsics.checkNotNullParameter(storageScope, "storageScope");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                case 1:
                    return AssetData.INSTANCE.rename(from, to);
                case 2:
                    return FileData.INSTANCE.rename(from, to);
                case 3:
                    if (Build.VERSION.SDK_INT >= 29) {
                        return MediaStoreData.INSTANCE.rename(context, from, to);
                    }
                    return false;
                case 4:
                    return false;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }

    /* JADX INFO: renamed from: getEndOfFile$lib_templateDebug, reason: from getter */
    public final boolean getEndOfFile() {
        return this.endOfFile;
    }

    public final void setEndOfFile$lib_templateDebug(boolean z) {
        this.endOfFile = z;
    }

    public final void seekFromEnd(long positionFromEnd) {
        long positionFromBeginning = Math.max(0L, getLength() - positionFromEnd);
        seek(positionFromBeginning);
    }

    /* JADX INFO: compiled from: DataAccess.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rH\u0016J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0005\u001a\u00020\u0006X \u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;", "Lorg/godotengine/godot/io/file/DataAccess;", "filePath", "", "(Ljava/lang/String;)V", "fileChannel", "Ljava/nio/channels/FileChannel;", "getFileChannel$lib_templateDebug", "()Ljava/nio/channels/FileChannel;", "close", "", "flush", "position", "", "read", "", "buffer", "Ljava/nio/ByteBuffer;", "resize", "Lorg/godotengine/godot/error/Error;", "length", "seek", "size", "write", "", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class FileChannelDataAccess extends DataAccess {
        private final String filePath;

        /* JADX INFO: renamed from: getFileChannel$lib_templateDebug */
        public abstract FileChannel getFileChannel();

        public FileChannelDataAccess(String filePath) {
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            this.filePath = filePath;
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public void close() {
            try {
                getFileChannel().close();
            } catch (IOException e) {
                Log.w(DataAccess.TAG, "Exception when closing file " + this.filePath + ".", e);
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public void flush() {
            try {
                getFileChannel().force(false);
            } catch (IOException e) {
                Log.w(DataAccess.TAG, "Exception when flushing file " + this.filePath + ".", e);
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public void seek(long position) {
            try {
                getFileChannel().position(position);
                setEndOfFile$lib_templateDebug(position >= getFileChannel().size());
            } catch (Exception e) {
                Log.w(DataAccess.TAG, "Exception when seeking file " + this.filePath + ".", e);
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public Error resize(long length) {
            try {
                getFileChannel().truncate(length);
                return Error.OK;
            } catch (IllegalArgumentException e) {
                return Error.ERR_INVALID_PARAMETER;
            } catch (ClosedChannelException e2) {
                return Error.ERR_FILE_CANT_OPEN;
            } catch (IOException e3) {
                return Error.FAILED;
            } catch (NonWritableChannelException e4) {
                return Error.ERR_FILE_CANT_OPEN;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        /* JADX INFO: renamed from: position */
        public long getPosition() {
            try {
                return getFileChannel().position();
            } catch (IOException e) {
                Log.w(DataAccess.TAG, "Exception when retrieving position for file " + this.filePath + ".", e);
                return 0L;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        /* JADX INFO: renamed from: size */
        public long getLength() {
            try {
                return getFileChannel().size();
            } catch (IOException e) {
                Log.w(DataAccess.TAG, "Exception when retrieving size for file " + this.filePath + ".", e);
                return 0L;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public int read(ByteBuffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            try {
                int readBytes = getFileChannel().read(buffer);
                setEndOfFile$lib_templateDebug(readBytes == -1 || getFileChannel().position() >= getFileChannel().size());
                if (readBytes == -1) {
                    return 0;
                }
                return readBytes;
            } catch (IOException e) {
                Log.w(DataAccess.TAG, "Exception while reading from file " + this.filePath + ".", e);
                return 0;
            }
        }

        @Override // org.godotengine.godot.io.file.DataAccess
        public boolean write(ByteBuffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            try {
                int writtenBytes = getFileChannel().write(buffer);
                if (writtenBytes > 0) {
                    setEndOfFile$lib_templateDebug(false);
                    return true;
                }
                return true;
            } catch (IOException e) {
                Log.w(DataAccess.TAG, "Exception while writing to file " + this.filePath + ".", e);
                return false;
            }
        }
    }
}
