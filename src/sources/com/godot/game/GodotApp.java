package com.godot.game;

import android.os.Bundle;
import android.util.Log;
import androidx.core.splashscreen.SplashScreen;
import org.godotengine.godot.GodotActivity;

/* JADX INFO: loaded from: classes4.dex */
public class GodotApp extends GodotActivity {
    static {
        if (BuildConfig.FLAVOR.equals("mono")) {
            try {
                Log.v("GODOT", "Loading System.Security.Cryptography.Native.Android library");
                System.loadLibrary("System.Security.Cryptography.Native.Android");
            } catch (UnsatisfiedLinkError e) {
                Log.e("GODOT", "Unable to load System.Security.Cryptography.Native.Android library");
            }
        }
    }

    @Override // org.godotengine.godot.GodotActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        SplashScreen.installSplashScreen(this);
        super.onCreate(savedInstanceState);
    }
}
