package com.google.android.vending.expansion.downloader;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.godotengine.godot.R;

/* JADX INFO: loaded from: classes2.dex */
public class Helpers {
    public static final int FS_CANNOT_READ = 2;
    public static final int FS_DOES_NOT_EXIST = 1;
    public static final int FS_READABLE = 0;
    public static Random sRandom = new Random(SystemClock.uptimeMillis());
    private static final Pattern CONTENT_DISPOSITION_PATTERN = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");

    private Helpers() {
    }

    static String parseContentDisposition(String contentDisposition) {
        try {
            Matcher m = CONTENT_DISPOSITION_PATTERN.matcher(contentDisposition);
            if (m.find()) {
                return m.group(1);
            }
            return null;
        } catch (IllegalStateException e) {
            return null;
        }
    }

    public static File getFilesystemRoot(String path) {
        File cache = Environment.getDownloadCacheDirectory();
        if (path.startsWith(cache.getPath())) {
            return cache;
        }
        File external = Environment.getExternalStorageDirectory();
        if (path.startsWith(external.getPath())) {
            return external;
        }
        throw new IllegalArgumentException("Cannot determine filesystem root for " + path);
    }

    public static boolean isExternalMediaMounted() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return false;
        }
        return true;
    }

    public static long getAvailableBytes(File root) {
        StatFs stat = new StatFs(root.getPath());
        long availableBlocks = ((long) stat.getAvailableBlocks()) - 4;
        return ((long) stat.getBlockSize()) * availableBlocks;
    }

    public static boolean isFilenameValid(String filename) {
        String filename2 = filename.replaceFirst("/+", "/");
        return filename2.startsWith(Environment.getDownloadCacheDirectory().toString()) || filename2.startsWith(Environment.getExternalStorageDirectory().toString());
    }

    static void deleteFile(String path) {
        try {
            File file = new File(path);
            file.delete();
        } catch (Exception e) {
            Log.w(Constants.TAG, "file: '" + path + "' couldn't be deleted", e);
        }
    }

    public static String getDownloadProgressString(long overallProgress, long overallTotal) {
        if (overallTotal == 0) {
            return "";
        }
        return String.format(Locale.ENGLISH, "%.2f", Float.valueOf(overallProgress / 1048576.0f)) + "MB /" + String.format(Locale.ENGLISH, "%.2f", Float.valueOf(overallTotal / 1048576.0f)) + "MB";
    }

    public static String getDownloadProgressStringNotification(long overallProgress, long overallTotal) {
        if (overallTotal == 0) {
            return "";
        }
        return getDownloadProgressString(overallProgress, overallTotal) + " (" + getDownloadProgressPercent(overallProgress, overallTotal) + ")";
    }

    public static String getDownloadProgressPercent(long overallProgress, long overallTotal) {
        if (overallTotal == 0) {
            return "";
        }
        return Long.toString((100 * overallProgress) / overallTotal) + "%";
    }

    public static String getSpeedString(float bytesPerMillisecond) {
        return String.format(Locale.ENGLISH, "%.2f", Float.valueOf((1000.0f * bytesPerMillisecond) / 1024.0f));
    }

    public static String getTimeRemaining(long durationInMilliseconds) {
        SimpleDateFormat sdf;
        if (durationInMilliseconds > 3600000) {
            sdf = new SimpleDateFormat("HH:mm", Locale.getDefault());
        } else {
            sdf = new SimpleDateFormat("mm:ss", Locale.getDefault());
        }
        return sdf.format(new Date(durationInMilliseconds - ((long) TimeZone.getDefault().getRawOffset())));
    }

    public static String getExpansionAPKFileName(Context c, boolean mainFile, int versionCode) {
        return (mainFile ? "main." : "patch.") + versionCode + "." + c.getPackageName() + ".obb";
    }

    public static String generateSaveFileName(Context c, String fileName) {
        String path = getSaveFilePath(c) + File.separator + fileName;
        return path;
    }

    public static String getSaveFilePath(Context c) {
        return c.getObbDir().toString();
    }

    public static boolean doesFileExist(Context c, String fileName, long fileSize, boolean deleteFileOnMismatch) {
        File fileForNewFile = new File(generateSaveFileName(c, fileName));
        if (!fileForNewFile.exists()) {
            return false;
        }
        if (fileForNewFile.length() == fileSize) {
            return true;
        }
        if (deleteFileOnMismatch) {
            fileForNewFile.delete();
            return false;
        }
        return false;
    }

    public static int getFileStatus(Context c, String fileName) {
        File fileForNewFile = new File(generateSaveFileName(c, fileName));
        if (fileForNewFile.exists()) {
            if (fileForNewFile.canRead()) {
                return 0;
            }
            return 2;
        }
        return 1;
    }

    public static boolean canWriteOBBFile(Context c) {
        String path = getSaveFilePath(c);
        File fileForNewFile = new File(path);
        if (fileForNewFile.exists()) {
            return fileForNewFile.isDirectory() && fileForNewFile.canWrite();
        }
        boolean canWrite = fileForNewFile.mkdirs();
        return canWrite;
    }

    public static int getDownloaderStringResourceIDFromState(int state) {
        switch (state) {
            case 1:
                return R.string.state_idle;
            case 2:
                return R.string.state_fetching_url;
            case 3:
                return R.string.state_connecting;
            case 4:
                return R.string.state_downloading;
            case 5:
                return R.string.state_completed;
            case 6:
                return R.string.state_paused_network_unavailable;
            case 7:
                return R.string.state_paused_by_request;
            case 8:
                return R.string.state_paused_wifi_disabled;
            case 9:
                return R.string.state_paused_wifi_unavailable;
            case 10:
                return R.string.state_paused_wifi_disabled;
            case 11:
                return R.string.state_paused_wifi_unavailable;
            case 12:
                return R.string.state_paused_roaming;
            case 13:
                return R.string.state_paused_network_setup_failure;
            case 14:
                return R.string.state_paused_sdcard_unavailable;
            case 15:
                return R.string.state_failed_unlicensed;
            case 16:
                return R.string.state_failed_fetching_url;
            case 17:
                return R.string.state_failed_sdcard_full;
            case 18:
                return R.string.state_failed_cancelled;
            default:
                return R.string.state_unknown;
        }
    }
}
