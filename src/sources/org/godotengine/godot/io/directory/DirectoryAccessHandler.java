package org.godotengine.godot.io.directory;

import android.content.Context;
import android.util.Log;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.Godot;
import org.godotengine.godot.io.StorageScope;

/* JADX INFO: compiled from: DirectoryAccessHandler.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 -2\u00020\u0001:\u0003,-.B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u000eJ\u0016\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0014\u001a\u00020\u0012J\u0018\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012H\u0002J\u000e\u0010$\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010%\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010&\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010'\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010(\u001a\u0004\u0018\u00010\u000eJ\u001e\u0010)\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "assetsDirAccess", "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;", "fileSystemDirAccess", "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "assetsFileExists", "", "assetsPath", "", "dirClose", "", "dirAccessId", "", "dirExists", "nativeAccessType", "path", "dirIsDir", "dirNext", "dirOpen", "fileExists", "filesystemFileExists", "getDrive", "drive", "getDriveCount", "getSpaceLeft", "", "hasDirId", "accessType", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;", "dirId", "isCurrentHidden", "makeDir", "dir", "remove", "filename", "rename", "from", "to", "AccessType", "Companion", "DirectoryAccess", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DirectoryAccessHandler {
    public static final int INVALID_DIR_ID = -1;
    public static final int STARTING_DIR_ID = 1;
    private final AssetsDirectoryAccess assetsDirAccess;
    private final FilesystemDirectoryAccess fileSystemDirAccess;
    private final StorageScope.Identifier storageScopeIdentifier;
    private static final String TAG = DirectoryAccessHandler.class.getSimpleName();

    /* JADX INFO: compiled from: DirectoryAccessHandler.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\n\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005H&J\b\u0010\u0010\u001a\u00020\u0005H&J\b\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\tH&J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\tH&J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH&¨\u0006\u001c"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;", "", "dirClose", "", "dirId", "", "dirExists", "", "path", "", "dirIsDir", "dirNext", "dirOpen", "fileExists", "getDrive", "drive", "getDriveCount", "getSpaceLeft", "", "hasDirId", "isCurrentHidden", "makeDir", "dir", "remove", "filename", "rename", "from", "to", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface DirectoryAccess {
        void dirClose(int dirId);

        boolean dirExists(String path);

        boolean dirIsDir(int dirId);

        String dirNext(int dirId);

        int dirOpen(String path);

        boolean fileExists(String path);

        String getDrive(int drive);

        int getDriveCount();

        long getSpaceLeft();

        boolean hasDirId(int dirId);

        boolean isCurrentHidden(int dirId);

        boolean makeDir(String dir);

        boolean remove(String filename);

        boolean rename(String from, String to);
    }

    /* JADX INFO: compiled from: DirectoryAccessHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccessType.values().length];
            try {
                iArr[AccessType.ACCESS_RESOURCES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DirectoryAccessHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        StorageScope.Identifier identifier = new StorageScope.Identifier(context);
        this.storageScopeIdentifier = identifier;
        this.assetsDirAccess = new AssetsDirectoryAccess(context);
        this.fileSystemDirAccess = new FilesystemDirectoryAccess(context, identifier);
    }

    /* JADX INFO: compiled from: DirectoryAccessHandler.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0082\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;", "", "nativeValue", "", "(Ljava/lang/String;II)V", "getNativeValue", "()I", "generateDirAccessId", "dirId", "ACCESS_RESOURCES", "ACCESS_USERDATA", "ACCESS_FILESYSTEM", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private enum AccessType {
        ACCESS_RESOURCES(0),
        ACCESS_USERDATA(1),
        ACCESS_FILESYSTEM(2);

        public static final int DIR_ACCESS_ID_MULTIPLIER = 10;
        private final int nativeValue;
        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        public static EnumEntries<AccessType> getEntries() {
            return $ENTRIES;
        }

        AccessType(int nativeValue) {
            this.nativeValue = nativeValue;
        }

        public final int getNativeValue() {
            return this.nativeValue;
        }

        public final int generateDirAccessId(int dirId) {
            return (dirId * 10) + this.nativeValue;
        }

        /* JADX INFO: compiled from: DirectoryAccessHandler.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\b\u001a\u00020\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u001c\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;", "", "()V", "DIR_ACCESS_ID_MULTIPLIER", "", "fromDirAccessId", "Lkotlin/Pair;", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;", "dirAccessId", "fromNative", "nativeAccessType", "storageScope", "Lorg/godotengine/godot/io/StorageScope;", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {

            /* JADX INFO: compiled from: DirectoryAccessHandler.kt */
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

            public final Pair<AccessType, Integer> fromDirAccessId(int dirAccessId) {
                int nativeValue = dirAccessId % 10;
                int dirId = dirAccessId / 10;
                return new Pair<>(fromNative(nativeValue), Integer.valueOf(dirId));
            }

            private final AccessType fromNative(int nativeAccessType) {
                for (AccessType accessType : AccessType.getEntries()) {
                    if (accessType.getNativeValue() == nativeAccessType) {
                        return accessType;
                    }
                }
                return null;
            }

            public static /* synthetic */ AccessType fromNative$default(Companion companion, int i, StorageScope storageScope, int i2, Object obj) {
                if ((i2 & 2) != 0) {
                    storageScope = null;
                }
                return companion.fromNative(i, storageScope);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:23:0x0050 A[RETURN] */
            public final AccessType fromNative(int nativeAccessType, StorageScope storageScope) {
                AccessType accessType = fromNative(nativeAccessType);
                AccessType accessTypeFromStorageScope = null;
                if (accessType == null) {
                    Log.w(DirectoryAccessHandler.TAG, "Unsupported access type " + nativeAccessType);
                    return null;
                }
                if (accessType == AccessType.ACCESS_RESOURCES) {
                    if (Godot.INSTANCE.isEditorBuild()) {
                        return AccessType.ACCESS_FILESYSTEM;
                    }
                    return AccessType.ACCESS_RESOURCES;
                }
                if (storageScope != null) {
                    switch (WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()]) {
                        case 1:
                            accessTypeFromStorageScope = AccessType.ACCESS_RESOURCES;
                            if (accessTypeFromStorageScope != null) {
                                return accessTypeFromStorageScope;
                            }
                            break;
                        case 2:
                        case 3:
                            accessTypeFromStorageScope = AccessType.ACCESS_FILESYSTEM;
                            if (accessTypeFromStorageScope != null) {
                                return accessTypeFromStorageScope;
                            }
                            break;
                        case 4:
                            if (accessTypeFromStorageScope != null) {
                                return accessTypeFromStorageScope;
                            }
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                }
                AccessType accessTypeFromStorageScope2 = AccessType.ACCESS_FILESYSTEM;
                return accessTypeFromStorageScope2;
            }
        }
    }

    public final boolean assetsFileExists(String assetsPath) {
        Intrinsics.checkNotNullParameter(assetsPath, "assetsPath");
        return this.assetsDirAccess.fileExists(assetsPath);
    }

    public final boolean filesystemFileExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return this.fileSystemDirAccess.fileExists(path);
    }

    private final boolean hasDirId(AccessType accessType, int dirId) {
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.hasDirId(dirId) : this.fileSystemDirAccess.hasDirId(dirId);
    }

    public final int dirOpen(int nativeAccessType, String path) {
        if (path == null) {
            return -1;
        }
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(path);
        AccessType accessType = AccessType.INSTANCE.fromNative(nativeAccessType, storageScope);
        if (accessType == null) {
            return -1;
        }
        int dirId = WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.dirOpen(path) : this.fileSystemDirAccess.dirOpen(path);
        if (dirId == -1) {
            return -1;
        }
        int dirAccessId = accessType.generateDirAccessId(dirId);
        return dirAccessId;
    }

    public final String dirNext(int dirAccessId) {
        Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
        AccessType accessType = pairFromDirAccessId.component1();
        int dirId = pairFromDirAccessId.component2().intValue();
        if (accessType != null && hasDirId(accessType, dirId)) {
            return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.dirNext(dirId) : this.fileSystemDirAccess.dirNext(dirId);
        }
        Log.w(TAG, "dirNext: Invalid dir id: " + dirId);
        return "";
    }

    public final void dirClose(int dirAccessId) {
        Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
        AccessType accessType = pairFromDirAccessId.component1();
        int dirId = pairFromDirAccessId.component2().intValue();
        if (accessType == null || !hasDirId(accessType, dirId)) {
            Log.w(TAG, "dirClose: Invalid dir id: " + dirId);
        } else if (WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] != 1) {
            this.fileSystemDirAccess.dirClose(dirId);
        } else {
            this.assetsDirAccess.dirClose(dirId);
        }
    }

    public final boolean dirIsDir(int dirAccessId) {
        Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
        AccessType accessType = pairFromDirAccessId.component1();
        int dirId = pairFromDirAccessId.component2().intValue();
        if (accessType != null && hasDirId(accessType, dirId)) {
            return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.dirIsDir(dirId) : this.fileSystemDirAccess.dirIsDir(dirId);
        }
        Log.w(TAG, "dirIsDir: Invalid dir id: " + dirId);
        return false;
    }

    public final boolean isCurrentHidden(int dirAccessId) {
        Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
        AccessType accessType = pairFromDirAccessId.component1();
        int dirId = pairFromDirAccessId.component2().intValue();
        if (accessType == null || !hasDirId(accessType, dirId)) {
            return false;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.isCurrentHidden(dirId) : this.fileSystemDirAccess.isCurrentHidden(dirId);
    }

    public final boolean dirExists(int nativeAccessType, String path) {
        if (path == null) {
            return false;
        }
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(path);
        AccessType accessType = AccessType.INSTANCE.fromNative(nativeAccessType, storageScope);
        if (accessType == null) {
            return false;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.dirExists(path) : this.fileSystemDirAccess.dirExists(path);
    }

    public final boolean fileExists(int nativeAccessType, String path) {
        if (path == null) {
            return false;
        }
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(path);
        AccessType accessType = AccessType.INSTANCE.fromNative(nativeAccessType, storageScope);
        if (accessType == null) {
            return false;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.fileExists(path) : this.fileSystemDirAccess.fileExists(path);
    }

    public final int getDriveCount(int nativeAccessType) {
        AccessType accessType = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
        if (accessType == null) {
            return 0;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.getDriveCount() : this.fileSystemDirAccess.getDriveCount();
    }

    public final String getDrive(int nativeAccessType, int drive) {
        AccessType accessType = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
        if (accessType == null) {
            return "";
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.getDrive(drive) : this.fileSystemDirAccess.getDrive(drive);
    }

    public final boolean makeDir(int nativeAccessType, String dir) {
        if (dir == null) {
            return false;
        }
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(dir);
        AccessType accessType = AccessType.INSTANCE.fromNative(nativeAccessType, storageScope);
        if (accessType == null) {
            return false;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.makeDir(dir) : this.fileSystemDirAccess.makeDir(dir);
    }

    public final long getSpaceLeft(int nativeAccessType) {
        AccessType accessType = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
        if (accessType == null) {
            return 0L;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.getSpaceLeft() : this.fileSystemDirAccess.getSpaceLeft();
    }

    public final boolean rename(int nativeAccessType, String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        AccessType accessType = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
        if (accessType == null) {
            return false;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.rename(from, to) : this.fileSystemDirAccess.rename(from, to);
    }

    public final boolean remove(int nativeAccessType, String filename) {
        if (filename == null) {
            return false;
        }
        StorageScope storageScope = this.storageScopeIdentifier.identifyStorageScope(filename);
        AccessType accessType = AccessType.INSTANCE.fromNative(nativeAccessType, storageScope);
        if (accessType == null) {
            return false;
        }
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.remove(filename) : this.fileSystemDirAccess.remove(filename);
    }
}
