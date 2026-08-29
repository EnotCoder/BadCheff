package org.godotengine.godot.io.file;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: FileAccessFlags.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessFlags;", "", "nativeValue", "", "(Ljava/lang/String;II)V", "getNativeValue", "()I", "getMode", "", "shouldTruncate", "", "READ", "WRITE", "READ_WRITE", "WRITE_READ", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum FileAccessFlags {
    READ(1),
    WRITE(2),
    READ_WRITE(3),
    WRITE_READ(7);

    private final int nativeValue;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: FileAccessFlags.kt */
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

    public static EnumEntries<FileAccessFlags> getEntries() {
        return $ENTRIES;
    }

    FileAccessFlags(int nativeValue) {
        this.nativeValue = nativeValue;
    }

    public final int getNativeValue() {
        return this.nativeValue;
    }

    public final String getMode() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return "r";
            case 2:
                return "w";
            case 3:
            case 4:
                return "rw";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean shouldTruncate() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
            case 3:
                return false;
            case 2:
            case 4:
                return true;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: compiled from: FileAccessFlags.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;", "", "()V", "fromNativeModeFlags", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "modeFlag", "", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FileAccessFlags fromNativeModeFlags(int modeFlag) {
            for (FileAccessFlags flag : FileAccessFlags.getEntries()) {
                if (flag.getNativeValue() == modeFlag) {
                    return flag;
                }
            }
            return null;
        }
    }
}
