package org.godotengine.godot.xr;

/* JADX INFO: loaded from: classes2.dex */
public enum XRMode {
    REGULAR(0, "Regular", "--xr_mode_regular", "Default Android Gamepad"),
    OPENXR(1, "OpenXR", "--xr_mode_openxr", "");

    public final String cmdLineArg;
    final int index;
    public final String inputFallbackMapping;
    final String label;

    XRMode(int index, String label, String cmdLineArg, String inputFallbackMapping) {
        this.index = index;
        this.label = label;
        this.cmdLineArg = cmdLineArg;
        this.inputFallbackMapping = inputFallbackMapping;
    }
}
