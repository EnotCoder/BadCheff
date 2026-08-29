package org.godotengine.godot.io.directory;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.godotengine.godot.io.StorageScope;
import org.godotengine.godot.io.file.AssetData;

/* JADX INFO: compiled from: AssetsDirectoryAccess.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\f\b\u0000\u0018\u0000 '2\u00020\u0001:\u0002&'B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\fH\u0016J\b\u0010\u001a\u001a\u00020\fH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0010\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u0013H\u0016J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0013H\u0016J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0013H\u0016R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "assetManager", "Landroid/content/res/AssetManager;", "kotlin.jvm.PlatformType", "dirs", "Landroid/util/SparseArray;", "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;", "lastDirId", "", "dirClose", "", "dirId", "dirExists", "", "path", "", "dirIsDir", "dirNext", "dirOpen", "fileExists", "getDrive", "drive", "getDriveCount", "getSpaceLeft", "", "hasDirId", "isCurrentHidden", "makeDir", "dir", "remove", "filename", "rename", "from", "to", "AssetDir", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetsDirectoryAccess implements DirectoryAccessHandler.DirectoryAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = AssetsDirectoryAccess.class.getSimpleName();
    private final AssetManager assetManager;
    private final Context context;
    private final SparseArray<AssetDir> dirs;
    private int lastDirId;

    public AssetsDirectoryAccess(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.assetManager = context.getAssets();
        this.lastDirId = 1;
        this.dirs = new SparseArray<>();
    }

    /* JADX INFO: compiled from: AssetsDirectoryAccess.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\bR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getAssetsPath", "originalPath", "getAssetsPath$lib_templateDebug", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getAssetsPath$lib_templateDebug(String originalPath) {
            Intrinsics.checkNotNullParameter(originalPath, "originalPath");
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            if (StringsKt.startsWith$default(originalPath, separator, false, 2, (Object) null)) {
                String strSubstring = originalPath.substring(File.separator.length());
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                return strSubstring;
            }
            if (StringsKt.startsWith$default(originalPath, StorageScope.Identifier.ASSETS_PREFIX, false, 2, (Object) null)) {
                String strSubstring2 = originalPath.substring(9);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                return strSubstring2;
            }
            return originalPath;
        }
    }

    /* JADX INFO: compiled from: AssetsDirectoryAccess.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J2\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;", "", "path", "", "files", "", "current", "", "(Ljava/lang/String;[Ljava/lang/String;I)V", "getCurrent", "()I", "setCurrent", "(I)V", "getFiles", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getPath", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;[Ljava/lang/String;I)Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;", "equals", "", "other", "hashCode", "toString", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class AssetDir {
        private int current;
        private final String[] files;
        private final String path;

        public static /* synthetic */ AssetDir copy$default(AssetDir assetDir, String str, String[] strArr, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = assetDir.path;
            }
            if ((i2 & 2) != 0) {
                strArr = assetDir.files;
            }
            if ((i2 & 4) != 0) {
                i = assetDir.current;
            }
            return assetDir.copy(str, strArr, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPath() {
            return this.path;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String[] getFiles() {
            return this.files;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getCurrent() {
            return this.current;
        }

        public final AssetDir copy(String path, String[] files, int current) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(files, "files");
            return new AssetDir(path, files, current);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AssetDir)) {
                return false;
            }
            AssetDir assetDir = (AssetDir) other;
            return Intrinsics.areEqual(this.path, assetDir.path) && Intrinsics.areEqual(this.files, assetDir.files) && this.current == assetDir.current;
        }

        public int hashCode() {
            return (((this.path.hashCode() * 31) + Arrays.hashCode(this.files)) * 31) + this.current;
        }

        public String toString() {
            return "AssetDir(path=" + this.path + ", files=" + Arrays.toString(this.files) + ", current=" + this.current + ")";
        }

        public AssetDir(String path, String[] files, int current) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(files, "files");
            this.path = path;
            this.files = files;
            this.current = current;
        }

        public /* synthetic */ AssetDir(String str, String[] strArr, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, strArr, (i2 & 4) != 0 ? 0 : i);
        }

        public final int getCurrent() {
            return this.current;
        }

        public final String[] getFiles() {
            return this.files;
        }

        public final String getPath() {
            return this.path;
        }

        public final void setCurrent(int i) {
            this.current = i;
        }
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean hasDirId(int dirId) {
        return this.dirs.indexOfKey(dirId) >= 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public int dirOpen(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        String assetsPath = INSTANCE.getAssetsPath$lib_templateDebug(path);
        try {
            String[] files = this.assetManager.list(assetsPath);
            if (files == null) {
                return -1;
            }
            if (files.length == 0) {
                return -1;
            }
            AssetDir ad = new AssetDir(assetsPath, files, 0, 4, null);
            SparseArray<AssetDir> sparseArray = this.dirs;
            int i = this.lastDirId + 1;
            this.lastDirId = i;
            sparseArray.put(i, ad);
            return this.lastDirId;
        } catch (IOException e) {
            Log.e(TAG, "Exception on dirOpen", e);
            return -1;
        }
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean dirExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        String assetsPath = INSTANCE.getAssetsPath$lib_templateDebug(path);
        try {
            String[] files = this.assetManager.list(assetsPath);
            if (files == null) {
                return false;
            }
            return !(files.length == 0);
        } catch (IOException e) {
            Log.e(TAG, "Exception on dirExists", e);
            return false;
        }
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean fileExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return AssetData.INSTANCE.fileExists(this.context, path);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean dirIsDir(int dirId) throws IOException {
        String filePath;
        AssetDir assetDir = this.dirs.get(dirId);
        Intrinsics.checkNotNullExpressionValue(assetDir, "get(...)");
        AssetDir ad = assetDir;
        int idx = ad.getCurrent();
        if (idx > 0) {
            idx--;
        }
        if (idx >= ad.getFiles().length) {
            return false;
        }
        String fileName = ad.getFiles()[idx];
        if (Intrinsics.areEqual(ad.getPath(), "")) {
            filePath = fileName;
        } else {
            filePath = ad.getPath() + "/" + fileName;
        }
        String[] fileContents = this.assetManager.list(filePath);
        return (fileContents != null ? fileContents.length : 0) > 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean isCurrentHidden(int dirId) {
        AssetDir ad = this.dirs.get(dirId);
        int idx = ad.getCurrent();
        if (idx > 0) {
            idx--;
        }
        if (idx >= ad.getFiles().length) {
            return false;
        }
        String fileName = ad.getFiles()[idx];
        return StringsKt.startsWith$default((CharSequence) fileName, '.', false, 2, (Object) null);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public String dirNext(int dirId) {
        AssetDir assetDir = this.dirs.get(dirId);
        Intrinsics.checkNotNullExpressionValue(assetDir, "get(...)");
        AssetDir ad = assetDir;
        if (ad.getCurrent() >= ad.getFiles().length) {
            ad.setCurrent(ad.getCurrent() + 1);
            return "";
        }
        String[] files = ad.getFiles();
        int current = ad.getCurrent();
        ad.setCurrent(current + 1);
        return files[current];
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public void dirClose(int dirId) {
        this.dirs.remove(dirId);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public int getDriveCount() {
        return 0;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public String getDrive(int drive) {
        return "";
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean makeDir(String dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return false;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public long getSpaceLeft() {
        return 0L;
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean rename(String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        return AssetData.INSTANCE.rename(from, to);
    }

    @Override // org.godotengine.godot.io.directory.DirectoryAccessHandler.DirectoryAccess
    public boolean remove(String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        return AssetData.INSTANCE.delete(filename);
    }
}
