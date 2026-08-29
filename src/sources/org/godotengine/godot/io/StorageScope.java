package org.godotengine.godot.io;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.godotengine.godot.GodotLib;

/* JADX INFO: compiled from: StorageScope.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, d2 = {"Lorg/godotengine/godot/io/StorageScope;", "", "(Ljava/lang/String;I)V", "ASSETS", "APP", "SHARED", "UNKNOWN", "Identifier", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum StorageScope {
    ASSETS,
    APP,
    SHARED,
    UNKNOWN;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static EnumEntries<StorageScope> getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: compiled from: StorageScope.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lorg/godotengine/godot/io/StorageScope$Identifier;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "documentsSharedDir", "", "downloadsSharedDir", "externalAppDir", "internalAppDir", "internalCacheDir", "sharedDir", "canAccess", "", "path", "identifyStorageScope", "Lorg/godotengine/godot/io/StorageScope;", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Identifier {
        public static final String ASSETS_PREFIX = "assets://";
        private final String documentsSharedDir;
        private final String downloadsSharedDir;
        private final String externalAppDir;
        private final String internalAppDir;
        private final String internalCacheDir;
        private final String sharedDir;

        public Identifier(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.internalAppDir = context.getFilesDir().getCanonicalPath();
            this.internalCacheDir = context.getCacheDir().getCanonicalPath();
            File externalFilesDir = context.getExternalFilesDir(null);
            this.externalAppDir = externalFilesDir != null ? externalFilesDir.getCanonicalPath() : null;
            this.sharedDir = Environment.getExternalStorageDirectory().getCanonicalPath();
            this.downloadsSharedDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getCanonicalPath();
            this.documentsSharedDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getCanonicalPath();
        }

        public final boolean canAccess(String path) {
            StorageScope storageScope = identifyStorageScope(path);
            return storageScope == StorageScope.APP || storageScope == StorageScope.SHARED;
        }

        public final StorageScope identifyStorageScope(String path) {
            String str;
            if (path == null) {
                return StorageScope.UNKNOWN;
            }
            if (StringsKt.startsWith$default(path, ASSETS_PREFIX, false, 2, (Object) null)) {
                return StorageScope.ASSETS;
            }
            File pathFile = new File(path);
            if (!pathFile.isAbsolute()) {
                pathFile = new File(GodotLib.getProjectResourceDir(), path);
                if (!pathFile.isAbsolute()) {
                    return StorageScope.UNKNOWN;
                }
            }
            if (Build.VERSION.SDK_INT >= 30 && Environment.isExternalStorageManager()) {
                return StorageScope.APP;
            }
            String canonicalPathFile = pathFile.getCanonicalPath();
            if (this.internalAppDir != null) {
                Intrinsics.checkNotNull(canonicalPathFile);
                if (StringsKt.startsWith$default(canonicalPathFile, this.internalAppDir, false, 2, (Object) null)) {
                    return StorageScope.APP;
                }
            }
            if (this.internalCacheDir != null) {
                Intrinsics.checkNotNull(canonicalPathFile);
                if (StringsKt.startsWith$default(canonicalPathFile, this.internalCacheDir, false, 2, (Object) null)) {
                    return StorageScope.APP;
                }
            }
            if (this.externalAppDir != null) {
                Intrinsics.checkNotNull(canonicalPathFile);
                if (StringsKt.startsWith$default(canonicalPathFile, this.externalAppDir, false, 2, (Object) null)) {
                    return StorageScope.APP;
                }
            }
            String rootDir = System.getenv("ANDROID_ROOT");
            if (rootDir != null) {
                Intrinsics.checkNotNull(canonicalPathFile);
                if (StringsKt.startsWith$default(canonicalPathFile, rootDir, false, 2, (Object) null)) {
                    return StorageScope.APP;
                }
            }
            if (this.sharedDir != null) {
                Intrinsics.checkNotNull(canonicalPathFile);
                if (StringsKt.startsWith$default(canonicalPathFile, this.sharedDir, false, 2, (Object) null)) {
                    if (Build.VERSION.SDK_INT < 30) {
                        return StorageScope.APP;
                    }
                    String str2 = this.downloadsSharedDir;
                    if ((str2 != null && StringsKt.startsWith$default(canonicalPathFile, str2, false, 2, (Object) null)) || ((str = this.documentsSharedDir) != null && StringsKt.startsWith$default(canonicalPathFile, str, false, 2, (Object) null))) {
                        return StorageScope.APP;
                    }
                    return StorageScope.SHARED;
                }
            }
            return StorageScope.UNKNOWN;
        }
    }
}
