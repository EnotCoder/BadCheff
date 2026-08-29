package org.godotengine.godot.utils;

import android.util.Log;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.GodotLib;

/* JADX INFO: compiled from: GameMenuUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\t\u0010\b\u001a\u00020\tH\u0087 J\t\u0010\n\u001a\u00020\tH\u0087 J\t\u0010\u000b\u001a\u00020\tH\u0087 J\t\u0010\f\u001a\u00020\tH\u0087 J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007J\u0011\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0087 J\u0011\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0014H\u0087 J\u0011\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0087 R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lorg/godotengine/godot/utils/GameMenuUtils;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "fetchGameEmbedMode", "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;", "nextFrame", "", "playMainScene", "resetCamera2DPosition", "resetCamera3DPosition", "saveGameEmbedMode", "gameEmbedMode", "setCameraManipulateMode", "mode", "", "setCameraOverride", "enabled", "", "setNodeType", "type", "setSelectMode", "setSelectionVisible", "visible", "setSuspend", "GameEmbedMode", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GameMenuUtils {
    public static final GameMenuUtils INSTANCE = new GameMenuUtils();
    private static final String TAG = GameMenuUtils.class.getSimpleName();

    @JvmStatic
    public static final native void nextFrame();

    @JvmStatic
    public static final native void playMainScene();

    @JvmStatic
    public static final native void resetCamera2DPosition();

    @JvmStatic
    public static final native void resetCamera3DPosition();

    @JvmStatic
    public static final native void setCameraManipulateMode(int mode);

    @JvmStatic
    public static final native void setCameraOverride(boolean enabled);

    @JvmStatic
    public static final native void setNodeType(int type);

    @JvmStatic
    public static final native void setSelectMode(int mode);

    @JvmStatic
    public static final native void setSelectionVisible(boolean visible);

    @JvmStatic
    public static final native void setSuspend(boolean enabled);

    private GameMenuUtils() {
    }

    /* JADX INFO: compiled from: GameMenuUtils.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;", "", "nativeValue", "", "(Ljava/lang/String;II)V", "getNativeValue$lib_templateDebug", "()I", "DISABLED", "AUTO", "ENABLED", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum GameEmbedMode {
        DISABLED(-1),
        AUTO(0),
        ENABLED(1);

        public static final String SETTING_KEY = "run/window_placement/game_embed_mode";
        private final int nativeValue;
        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        public static EnumEntries<GameEmbedMode> getEntries() {
            return $ENTRIES;
        }

        GameEmbedMode(int nativeValue) {
            this.nativeValue = nativeValue;
        }

        /* JADX INFO: renamed from: getNativeValue$lib_templateDebug, reason: from getter */
        public final int getNativeValue() {
            return this.nativeValue;
        }

        /* JADX INFO: compiled from: GameMenuUtils.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0001¢\u0006\u0002\b\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;", "", "()V", "SETTING_KEY", "", "fromNativeValue", "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;", "nativeValue", "", "fromNativeValue$lib_templateDebug", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final GameEmbedMode fromNativeValue$lib_templateDebug(int nativeValue) {
                for (GameEmbedMode mode : GameEmbedMode.getEntries()) {
                    if (mode.getNativeValue() == nativeValue) {
                        return mode;
                    }
                }
                return null;
            }
        }
    }

    public final GameEmbedMode fetchGameEmbedMode() {
        try {
            int gameEmbedModeValue = Integer.parseInt(GodotLib.getEditorSetting(GameEmbedMode.SETTING_KEY));
            GameEmbedMode gameEmbedMode = GameEmbedMode.INSTANCE.fromNativeValue$lib_templateDebug(gameEmbedModeValue);
            return gameEmbedMode == null ? GameEmbedMode.AUTO : gameEmbedMode;
        } catch (Exception e) {
            Log.w(TAG, "Unable to retrieve game embed mode", e);
            return GameEmbedMode.AUTO;
        }
    }

    public final void saveGameEmbedMode(GameEmbedMode gameEmbedMode) {
        Intrinsics.checkNotNullParameter(gameEmbedMode, "gameEmbedMode");
        GodotLib.setEditorSetting(GameEmbedMode.SETTING_KEY, Integer.valueOf(gameEmbedMode.getNativeValue()));
    }
}
