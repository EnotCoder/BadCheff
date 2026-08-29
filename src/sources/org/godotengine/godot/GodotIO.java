package org.godotengine.godot;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import androidx.core.content.FileProvider;
import java.io.File;
import java.util.List;
import java.util.Locale;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.input.GodotEditText;

/* JADX INFO: loaded from: classes2.dex */
public class GodotIO {
    public static final int SYSTEM_DIR_DCIM = 1;
    public static final int SYSTEM_DIR_DESKTOP = 0;
    public static final int SYSTEM_DIR_DOCUMENTS = 2;
    public static final int SYSTEM_DIR_DOWNLOADS = 3;
    public static final int SYSTEM_DIR_MOVIES = 4;
    public static final int SYSTEM_DIR_MUSIC = 5;
    public static final int SYSTEM_DIR_PICTURES = 6;
    public static final int SYSTEM_DIR_RINGTONES = 7;
    private static final String TAG = GodotIO.class.getSimpleName();
    private final Activity activity;
    GodotEditText edit;
    private final String uniqueId;
    final int SCREEN_LANDSCAPE = 0;
    final int SCREEN_PORTRAIT = 1;
    final int SCREEN_REVERSE_LANDSCAPE = 2;
    final int SCREEN_REVERSE_PORTRAIT = 3;
    final int SCREEN_SENSOR_LANDSCAPE = 4;
    final int SCREEN_SENSOR_PORTRAIT = 5;
    final int SCREEN_SENSOR = 6;

    GodotIO(Activity p_activity) {
        this.activity = p_activity;
        String androidId = Settings.Secure.getString(p_activity.getContentResolver(), "android_id");
        this.uniqueId = androidId == null ? "" : androidId;
    }

    public int openURI(String uriString) {
        Uri dataUri;
        String dataType = "";
        boolean grantReadUriPermission = false;
        try {
            if (uriString.startsWith("/") || uriString.startsWith("file://")) {
                String filePath = uriString;
                grantReadUriPermission = true;
                if (filePath.startsWith("file://")) {
                    filePath = filePath.replace("file://", "");
                }
                File targetFile = new File(filePath);
                Uri dataUri2 = FileProvider.getUriForFile(this.activity, this.activity.getPackageName() + ".fileprovider", targetFile);
                dataType = this.activity.getContentResolver().getType(dataUri2);
                dataUri = dataUri2;
            } else {
                dataUri = Uri.parse(uriString);
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            if (TextUtils.isEmpty(dataType)) {
                intent.setData(dataUri);
            } else {
                intent.setDataAndType(dataUri, dataType);
            }
            if (grantReadUriPermission) {
                intent.addFlags(1);
            }
            this.activity.startActivity(intent);
            return Error.OK.toNativeValue();
        } catch (Exception e) {
            Log.e(TAG, "Unable to open uri " + uriString, e);
            return Error.FAILED.toNativeValue();
        }
    }

    public String getCacheDir() {
        return this.activity.getCacheDir().getAbsolutePath();
    }

    public String getTempDir() {
        File tempDir = new File(getCacheDir() + "/tmp");
        if (!tempDir.exists() && !tempDir.mkdirs()) {
            Log.e(TAG, "Unable to create temp dir");
        }
        return tempDir.getAbsolutePath();
    }

    public String getDataDir() {
        return this.activity.getFilesDir().getAbsolutePath();
    }

    public String getLocale() {
        return Locale.getDefault().toString();
    }

    public String getModel() {
        return Build.MODEL;
    }

    public int getScreenDPI() {
        return this.activity.getResources().getDisplayMetrics().densityDpi;
    }

    public float getScaledDensity() {
        int densityDpi = this.activity.getResources().getDisplayMetrics().densityDpi;
        if (densityDpi >= 640) {
            return 4.0f;
        }
        if (densityDpi >= 480) {
            return 3.0f;
        }
        if (densityDpi >= 320) {
            return 2.0f;
        }
        if (densityDpi >= 240) {
            return 1.5f;
        }
        if (densityDpi >= 160) {
            return 1.0f;
        }
        return 0.75f;
    }

    public double getScreenRefreshRate(double fallback) {
        Display display = this.activity.getWindowManager().getDefaultDisplay();
        if (display != null) {
            return display.getRefreshRate();
        }
        return fallback;
    }

    public int[] getDisplaySafeArea() {
        Rect rect = new Rect();
        this.activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int[] result = {rect.left, rect.top, rect.right, rect.bottom};
        if (Build.VERSION.SDK_INT >= 28) {
            WindowInsets insets = this.activity.getWindow().getDecorView().getRootWindowInsets();
            DisplayCutout cutout = insets.getDisplayCutout();
            if (cutout != null) {
                int insetLeft = cutout.getSafeInsetLeft();
                int insetTop = cutout.getSafeInsetTop();
                result[0] = insetLeft;
                result[1] = insetTop;
                result[2] = result[2] - (cutout.getSafeInsetRight() + insetLeft);
                result[3] = result[3] - (cutout.getSafeInsetBottom() + insetTop);
            }
        }
        return result;
    }

    public int[] getDisplayCutouts() {
        if (Build.VERSION.SDK_INT < 28) {
            return new int[0];
        }
        DisplayCutout cutout = this.activity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout();
        if (cutout == null) {
            return new int[0];
        }
        List<Rect> rects = cutout.getBoundingRects();
        int cutouts = rects.size();
        int[] result = new int[cutouts * 4];
        int index = 0;
        for (Rect rect : rects) {
            int index2 = index + 1;
            result[index] = rect.left;
            int index3 = index2 + 1;
            result[index2] = rect.top;
            int index4 = index3 + 1;
            result[index3] = rect.width();
            index = index4 + 1;
            result[index4] = rect.height();
        }
        return result;
    }

    public boolean hasHardwareKeyboard() {
        GodotEditText godotEditText = this.edit;
        if (godotEditText != null) {
            return godotEditText.hasHardwareKeyboard();
        }
        return false;
    }

    public void showKeyboard(String p_existing_text, int p_type, int p_max_input_length, int p_cursor_start, int p_cursor_end) {
        GodotEditText godotEditText = this.edit;
        if (godotEditText != null) {
            godotEditText.showKeyboard(p_existing_text, GodotEditText.VirtualKeyboardType.values()[p_type], p_max_input_length, p_cursor_start, p_cursor_end);
        }
    }

    public void hideKeyboard() {
        GodotEditText godotEditText = this.edit;
        if (godotEditText != null) {
            godotEditText.hideKeyboard();
        }
    }

    public void setScreenOrientation(int p_orientation) {
        switch (p_orientation) {
            case 0:
                this.activity.setRequestedOrientation(0);
                break;
            case 1:
                this.activity.setRequestedOrientation(1);
                break;
            case 2:
                this.activity.setRequestedOrientation(8);
                break;
            case 3:
                this.activity.setRequestedOrientation(9);
                break;
            case 4:
                this.activity.setRequestedOrientation(11);
                break;
            case 5:
                this.activity.setRequestedOrientation(12);
                break;
            case 6:
                this.activity.setRequestedOrientation(13);
                break;
        }
    }

    public int getScreenOrientation() {
        int orientation = this.activity.getRequestedOrientation();
        switch (orientation) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
            case 3:
            case 5:
            default:
                return -1;
            case 4:
            case 10:
            case 13:
                return 6;
            case 6:
            case 11:
                return 4;
            case 7:
            case 12:
                return 5;
            case 8:
                return 2;
            case 9:
                return 3;
        }
    }

    public void setEdit(GodotEditText _edit) {
        this.edit = _edit;
    }

    public String getSystemDir(int idx, boolean shared_storage) {
        String what;
        switch (idx) {
            case 1:
                what = Environment.DIRECTORY_DCIM;
                break;
            case 2:
                what = Environment.DIRECTORY_DOCUMENTS;
                break;
            case 3:
                what = Environment.DIRECTORY_DOWNLOADS;
                break;
            case 4:
                what = Environment.DIRECTORY_MOVIES;
                break;
            case 5:
                what = Environment.DIRECTORY_MUSIC;
                break;
            case 6:
                what = Environment.DIRECTORY_PICTURES;
                break;
            case 7:
                what = Environment.DIRECTORY_RINGTONES;
                break;
            default:
                what = null;
                break;
        }
        if (shared_storage) {
            if (Build.VERSION.SDK_INT >= 29) {
                Log.w(TAG, "Shared storage access is limited on Android 10 and higher.");
            }
            if (TextUtils.isEmpty(what)) {
                return Environment.getExternalStorageDirectory().getAbsolutePath();
            }
            return Environment.getExternalStoragePublicDirectory(what).getAbsolutePath();
        }
        return this.activity.getExternalFilesDir(what).getAbsolutePath();
    }

    public String getUniqueID() {
        return this.uniqueId;
    }
}
