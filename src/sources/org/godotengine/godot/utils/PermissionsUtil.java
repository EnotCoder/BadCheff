package org.godotengine.godot.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionsUtil {
    public static final int REQUEST_ALL_PERMISSION_REQ_CODE = 1001;
    public static final int REQUEST_CAMERA_PERMISSION = 2;
    public static final int REQUEST_INSTALL_PACKAGES_REQ_CODE = 3002;
    public static final int REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE = 2002;
    public static final int REQUEST_RECORD_AUDIO_PERMISSION = 1;
    public static final int REQUEST_SINGLE_PERMISSION_REQ_CODE = 1002;
    public static final int REQUEST_VIBRATE_PERMISSION = 3;
    private static final String TAG = PermissionsUtil.class.getSimpleName();

    private PermissionsUtil() {
    }

    public static boolean requestPermissions(Activity activity, List<String> permissions) {
        return requestPermissions(activity, permissions, 1001);
    }

    private static boolean requestPermissions(Activity activity, List<String> permissions, int requestCode) {
        if (permissions == null || permissions.isEmpty() || Build.VERSION.SDK_INT < 23) {
            return true;
        }
        boolean dispatchedPermissionsRequest = false;
        Set<String> requestedPermissions = new HashSet<>();
        for (String permission : permissions) {
            try {
                if (permission.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                    if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
                        Log.d(TAG, "Requesting permission " + permission);
                        try {
                            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                            intent.setData(Uri.parse(String.format("package:%s", activity.getPackageName())));
                            activity.startActivityForResult(intent, REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE);
                        } catch (Exception e) {
                            activity.startActivityForResult(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"), REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE);
                        }
                        dispatchedPermissionsRequest = true;
                    }
                } else if (permission.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    if (Build.VERSION.SDK_INT >= 26 && !activity.getPackageManager().canRequestPackageInstalls()) {
                        try {
                            Intent intent2 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                            intent2.setData(Uri.parse(String.format("package:%s", activity.getPackageName())));
                            activity.startActivityForResult(intent2, REQUEST_INSTALL_PACKAGES_REQ_CODE);
                            dispatchedPermissionsRequest = true;
                        } catch (Exception e2) {
                            Log.e(TAG, "Unable to request permission android.permission.REQUEST_INSTALL_PACKAGES");
                        }
                    }
                } else {
                    PermissionInfo permissionInfo = getPermissionInfo(activity, permission);
                    int protectionLevel = Build.VERSION.SDK_INT >= 28 ? permissionInfo.getProtection() : permissionInfo.protectionLevel;
                    if ((protectionLevel & 1) == 1 && ContextCompat.checkSelfPermission(activity, permission) != 0) {
                        Log.d(TAG, "Requesting permission " + permission);
                        requestedPermissions.add(permission);
                    }
                }
            } catch (PackageManager.NameNotFoundException e3) {
                Log.w(TAG, "Unable to identify permission " + permission, e3);
            }
        }
        if (!requestedPermissions.isEmpty()) {
            activity.requestPermissions((String[]) requestedPermissions.toArray(new String[0]), requestCode);
            dispatchedPermissionsRequest = true;
        }
        return !dispatchedPermissionsRequest;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x002d  */
    public static boolean requestPermission(String permissionName, Activity activity) {
        String updatedPermissionName;
        int requestCode;
        if (TextUtils.isEmpty(permissionName)) {
            return true;
        }
        switch (permissionName) {
            case "RECORD_AUDIO":
                updatedPermissionName = "android.permission.RECORD_AUDIO";
                requestCode = 1;
                break;
            case "CAMERA":
                updatedPermissionName = "android.permission.CAMERA";
                requestCode = 2;
                break;
            case "VIBRATE":
                updatedPermissionName = "android.permission.VIBRATE";
                requestCode = 3;
                break;
            default:
                updatedPermissionName = permissionName;
                requestCode = 1002;
                break;
        }
        List<String> permissions = Collections.singletonList(updatedPermissionName);
        return requestPermissions(activity, permissions, requestCode);
    }

    public static boolean requestManifestPermissions(Activity activity) {
        return requestManifestPermissions(activity, null);
    }

    public static boolean requestManifestPermissions(Activity activity, Set<String> excludes) {
        if (activity == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        try {
            List<String> manifestPermissions = getManifestPermissions(activity);
            if (manifestPermissions.isEmpty()) {
                return true;
            }
            if (excludes != null && !excludes.isEmpty()) {
                for (String excludedPermission : excludes) {
                    manifestPermissions.remove(excludedPermission);
                }
            }
            return requestPermissions(activity, manifestPermissions);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Unable to retrieve manifest permissions", e);
            return false;
        }
    }

    public static String[] getGrantedPermissions(Context context) {
        try {
            List<String> manifestPermissions = getManifestPermissions(context);
            if (manifestPermissions.isEmpty()) {
                return new String[0];
            }
            List<String> grantedPermissions = new ArrayList<>();
            for (String manifestPermission : manifestPermissions) {
                try {
                    if (manifestPermission.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                        if (Build.VERSION.SDK_INT >= 30 && Environment.isExternalStorageManager()) {
                            grantedPermissions.add(manifestPermission);
                        }
                    } else {
                        PermissionInfo permissionInfo = getPermissionInfo(context, manifestPermission);
                        int protectionLevel = Build.VERSION.SDK_INT >= 28 ? permissionInfo.getProtection() : permissionInfo.protectionLevel;
                        if ((protectionLevel & 1) == 1 && ContextCompat.checkSelfPermission(context, manifestPermission) == 0) {
                            grantedPermissions.add(manifestPermission);
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w(TAG, "Unable to identify permission " + manifestPermission, e);
                }
            }
            return (String[]) grantedPermissions.toArray(new String[0]);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e(TAG, "Unable to retrieve manifest permissions", e2);
            return new String[0];
        }
    }

    public static boolean hasManifestPermission(Context context, String permission) {
        try {
            for (String p : getManifestPermissions(context)) {
                if (permission.equals(p)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static ArrayList<String> getManifestPermissions(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 4096);
        if (packageInfo.requestedPermissions == null) {
            return new ArrayList<>();
        }
        return new ArrayList<>(Arrays.asList(packageInfo.requestedPermissions));
    }

    private static PermissionInfo getPermissionInfo(Context context, String permission) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        return packageManager.getPermissionInfo(permission, 0);
    }
}
