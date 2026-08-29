package org.godotengine.godot.io.file;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.io.directory.AssetsDirectoryAccess;

/* JADX INFO: compiled from: AssetData.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u001b\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u001c\u001a\u00020\fH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006 "}, d2 = {"Lorg/godotengine/godot/io/file/AssetData;", "Lorg/godotengine/godot/io/file/DataAccess;", "context", "Landroid/content/Context;", "filePath", "", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V", "inputStream", "Ljava/io/InputStream;", "length", "", "position", "readChannel", "Ljava/nio/channels/ReadableByteChannel;", "getReadChannel$lib_templateDebug", "()Ljava/nio/channels/ReadableByteChannel;", "close", "", "flush", "read", "", "buffer", "Ljava/nio/ByteBuffer;", "resize", "Lorg/godotengine/godot/error/Error;", "seek", "size", "write", "", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetData extends DataAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = AssetData.class.getSimpleName();
    private final String filePath;
    private final InputStream inputStream;
    private final long length;
    private long position;
    private final ReadableByteChannel readChannel;

    public AssetData(Context context, String filePath, FileAccessFlags accessFlag) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
        this.filePath = filePath;
        if (accessFlag == FileAccessFlags.WRITE) {
            throw new UnsupportedOperationException("Writing to the 'assets' directory is not supported");
        }
        String assetsPath = AssetsDirectoryAccess.INSTANCE.getAssetsPath$lib_templateDebug(filePath);
        InputStream inputStreamOpen = context.getAssets().open(assetsPath, 3);
        Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
        this.inputStream = inputStreamOpen;
        ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(inputStreamOpen);
        Intrinsics.checkNotNullExpressionValue(readableByteChannelNewChannel, "newChannel(...)");
        this.readChannel = readableByteChannelNewChannel;
        this.length = inputStreamOpen.available();
    }

    /* JADX INFO: compiled from: AssetData.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004J\u0016\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lorg/godotengine/godot/io/file/AssetData$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "delete", "", "path", "fileExists", "context", "Landroid/content/Context;", "fileLastModified", "", "rename", "from", "to", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean fileExists(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            String assetsPath = AssetsDirectoryAccess.INSTANCE.getAssetsPath$lib_templateDebug(path);
            try {
                String[] files = context.getAssets().list(assetsPath);
                return files != null && files.length == 0;
            } catch (IOException e) {
                Log.e(AssetData.TAG, "Exception on fileExists", e);
                return false;
            }
        }

        public final long fileLastModified(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return 0L;
        }

        public final boolean delete(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return false;
        }

        public final boolean rename(String from, String to) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            return false;
        }
    }

    /* JADX INFO: renamed from: getReadChannel$lib_templateDebug, reason: from getter */
    public final ReadableByteChannel getReadChannel() {
        return this.readChannel;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public void close() {
        try {
            this.inputStream.close();
        } catch (IOException e) {
            Log.w(TAG, "Exception when closing file " + this.filePath + ".", e);
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public void flush() {
        Log.w(TAG, "flush() is not supported.");
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public void seek(long position) {
        try {
            this.inputStream.skip(position);
            this.position = position;
            long j = this.length;
            if (position > j) {
                this.position = j;
                setEndOfFile$lib_templateDebug(true);
            } else {
                setEndOfFile$lib_templateDebug(false);
            }
        } catch (IOException e) {
            Log.w(TAG, "Exception when seeking file " + this.filePath + ".", e);
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public Error resize(long length) {
        Log.w(TAG, "resize() is not supported.");
        return Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    /* JADX INFO: renamed from: position, reason: from getter */
    public long getPosition() {
        return this.position;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    /* JADX INFO: renamed from: size, reason: from getter */
    public long getLength() {
        return this.length;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public int read(ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i = 0;
        try {
            int readBytes = this.readChannel.read(buffer);
            boolean z = true;
            if (readBytes == -1) {
                setEndOfFile$lib_templateDebug(true);
            } else {
                this.position += (long) readBytes;
                if (getPosition() < getLength()) {
                    z = false;
                }
                setEndOfFile$lib_templateDebug(z);
                i = readBytes;
            }
        } catch (IOException e) {
            Log.w(TAG, "Exception while reading from " + this.filePath + ".", e);
        }
        return i;
    }

    @Override // org.godotengine.godot.io.file.DataAccess
    public boolean write(ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Log.w(TAG, "write() is not supported.");
        return false;
    }
}
