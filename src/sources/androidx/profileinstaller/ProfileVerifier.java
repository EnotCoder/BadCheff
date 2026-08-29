package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ProfileVerifier {
    private static final String CUR_PROFILES_BASE_DIR = "/data/misc/profiles/cur/0/";
    private static final String PROFILE_FILE_NAME = "primary.prof";
    private static final String PROFILE_INSTALLED_CACHE_FILE_NAME = "profileInstalled";
    private static final String REF_PROFILES_BASE_DIR = "/data/misc/profiles/ref/";
    private static final String TAG = "ProfileVerifier";
    private static final ResolvableFuture<CompilationStatus> sFuture = ResolvableFuture.create();
    private static final Object SYNC_OBJ = new Object();
    private static CompilationStatus sCompilationStatus = null;

    private ProfileVerifier() {
    }

    public static CompilationStatus writeProfileVerification(Context context) {
        return writeProfileVerification(context, false);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0047  */
    /* JADX WARN: Code duplicated, block: B:39:0x0096  */
    /* JADX WARN: Code duplicated, block: B:42:0x009a A[Catch: all -> 0x0112, TryCatch #0 {, blocks: (B:9:0x000c, B:11:0x0010, B:13:0x0012, B:15:0x0019, B:18:0x0021, B:24:0x0048, B:29:0x006c, B:30:0x0071, B:32:0x0084, B:42:0x009a, B:44:0x00a2, B:47:0x00a7, B:60:0x00bf, B:64:0x00c6, B:69:0x00d1, B:71:0x00e5, B:78:0x00f6, B:79:0x00fa, B:73:0x00eb, B:36:0x0090, B:37:0x0094, B:82:0x00fd, B:83:0x0108, B:85:0x010a, B:86:0x0110), top: B:91:0x000c, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:60:0x00bf A[Catch: all -> 0x0112, TryCatch #0 {, blocks: (B:9:0x000c, B:11:0x0010, B:13:0x0012, B:15:0x0019, B:18:0x0021, B:24:0x0048, B:29:0x006c, B:30:0x0071, B:32:0x0084, B:42:0x009a, B:44:0x00a2, B:47:0x00a7, B:60:0x00bf, B:64:0x00c6, B:69:0x00d1, B:71:0x00e5, B:78:0x00f6, B:79:0x00fa, B:73:0x00eb, B:36:0x0090, B:37:0x0094, B:82:0x00fd, B:83:0x0108, B:85:0x010a, B:86:0x0110), top: B:91:0x000c, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e5 A[Catch: all -> 0x0112, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x000c, B:11:0x0010, B:13:0x0012, B:15:0x0019, B:18:0x0021, B:24:0x0048, B:29:0x006c, B:30:0x0071, B:32:0x0084, B:42:0x009a, B:44:0x00a2, B:47:0x00a7, B:60:0x00bf, B:64:0x00c6, B:69:0x00d1, B:71:0x00e5, B:78:0x00f6, B:79:0x00fa, B:73:0x00eb, B:36:0x0090, B:37:0x0094, B:82:0x00fd, B:83:0x0108, B:85:0x010a, B:86:0x0110), top: B:91:0x000c, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x00eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static CompilationStatus writeProfileVerification(Context context, boolean forceVerifyCurrentProfile) {
        boolean hasCurrentProfile;
        File referenceProfileFile;
        boolean z;
        boolean hasReferenceProfile;
        File currentProfileFile;
        long currentProfileSize;
        long packageLastUpdateTime;
        File cacheFile;
        Cache currentCache;
        boolean hasReferenceProfile2;
        int resultCode;
        int resultCode2;
        Cache newCache;
        Cache currentCache2;
        CompilationStatus compilationStatus;
        if (!forceVerifyCurrentProfile && (compilationStatus = sCompilationStatus) != null) {
            return compilationStatus;
        }
        synchronized (SYNC_OBJ) {
            if (!forceVerifyCurrentProfile) {
                CompilationStatus compilationStatus2 = sCompilationStatus;
                if (compilationStatus2 != null) {
                    return compilationStatus2;
                }
                hasCurrentProfile = false;
                if (Build.VERSION.SDK_INT >= 28 && Build.VERSION.SDK_INT != 30) {
                    referenceProfileFile = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    long referenceProfileSize = referenceProfileFile.length();
                    if (referenceProfileFile.exists() || referenceProfileSize <= 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    hasReferenceProfile = z;
                    currentProfileFile = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    currentProfileSize = currentProfileFile.length();
                    if (currentProfileFile.exists() && currentProfileSize > 0) {
                        hasCurrentProfile = true;
                    }
                    try {
                        packageLastUpdateTime = getPackageLastUpdateTime(context);
                        cacheFile = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                        if (cacheFile.exists()) {
                            currentCache = null;
                        } else {
                            try {
                                Cache currentCache3 = Cache.readFromFile(cacheFile);
                                currentCache = currentCache3;
                            } catch (IOException e) {
                                return setCompilationStatus(131072, hasReferenceProfile, hasCurrentProfile);
                            }
                        }
                        if (currentCache == null) {
                            hasReferenceProfile2 = hasReferenceProfile;
                            if (currentCache.mPackageLastUpdateTime != packageLastUpdateTime && currentCache.mResultCode != 2) {
                                resultCode = currentCache.mResultCode;
                            }
                            if (forceVerifyCurrentProfile && hasCurrentProfile && resultCode != 1) {
                                resultCode = 2;
                            }
                            if (currentCache == null && currentCache.mResultCode == 2 && resultCode == 1) {
                                if (referenceProfileSize < currentCache.mInstalledCurrentProfileSize) {
                                    resultCode2 = 3;
                                }
                                currentCache2 = currentCache;
                                newCache = new Cache(1, resultCode2, packageLastUpdateTime, currentProfileSize);
                                if (currentCache2 != null || !currentCache2.equals(newCache)) {
                                    try {
                                        newCache.writeOnFile(cacheFile);
                                    } catch (IOException e2) {
                                        resultCode2 = CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                                    }
                                }
                                return setCompilationStatus(resultCode2, hasReferenceProfile2, hasCurrentProfile);
                            }
                            currentCache2 = currentCache;
                            newCache = new Cache(1, resultCode2, packageLastUpdateTime, currentProfileSize);
                            if (currentCache2 != null) {
                                newCache.writeOnFile(cacheFile);
                            } else {
                                newCache.writeOnFile(cacheFile);
                            }
                            return setCompilationStatus(resultCode2, hasReferenceProfile2, hasCurrentProfile);
                        }
                        hasReferenceProfile2 = hasReferenceProfile;
                        if (hasReferenceProfile2) {
                            resultCode = 1;
                        } else if (hasCurrentProfile) {
                            resultCode = 2;
                        } else {
                            resultCode = 0;
                        }
                        if (forceVerifyCurrentProfile) {
                            resultCode = 2;
                        }
                        resultCode2 = currentCache == null ? resultCode : resultCode;
                        currentCache2 = currentCache;
                        newCache = new Cache(1, resultCode2, packageLastUpdateTime, currentProfileSize);
                        if (currentCache2 != null) {
                            newCache.writeOnFile(cacheFile);
                        } else {
                            newCache.writeOnFile(cacheFile);
                        }
                        return setCompilationStatus(resultCode2, hasReferenceProfile2, hasCurrentProfile);
                    } catch (PackageManager.NameNotFoundException e3) {
                        return setCompilationStatus(65536, hasReferenceProfile, hasCurrentProfile);
                    }
                }
                return setCompilationStatus(262144, false, false);
            }
            hasCurrentProfile = false;
            if (Build.VERSION.SDK_INT >= 28) {
                referenceProfileFile = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                long referenceProfileSize2 = referenceProfileFile.length();
                if (referenceProfileFile.exists()) {
                    z = false;
                } else {
                    z = false;
                }
                hasReferenceProfile = z;
                currentProfileFile = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                currentProfileSize = currentProfileFile.length();
                if (currentProfileFile.exists()) {
                    hasCurrentProfile = true;
                }
                packageLastUpdateTime = getPackageLastUpdateTime(context);
                cacheFile = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                if (cacheFile.exists()) {
                    currentCache = null;
                } else {
                    Cache currentCache4 = Cache.readFromFile(cacheFile);
                    currentCache = currentCache4;
                }
                if (currentCache == null) {
                    hasReferenceProfile2 = hasReferenceProfile;
                } else {
                    hasReferenceProfile2 = hasReferenceProfile;
                    if (currentCache.mPackageLastUpdateTime != packageLastUpdateTime) {
                    }
                    if (forceVerifyCurrentProfile) {
                        resultCode = 2;
                    }
                    if (currentCache == null) {
                    }
                    currentCache2 = currentCache;
                    newCache = new Cache(1, resultCode2, packageLastUpdateTime, currentProfileSize);
                    if (currentCache2 != null) {
                        newCache.writeOnFile(cacheFile);
                    } else {
                        newCache.writeOnFile(cacheFile);
                    }
                    return setCompilationStatus(resultCode2, hasReferenceProfile2, hasCurrentProfile);
                }
                if (hasReferenceProfile2) {
                    resultCode = 1;
                } else if (hasCurrentProfile) {
                    resultCode = 2;
                } else {
                    resultCode = 0;
                }
                if (forceVerifyCurrentProfile) {
                    resultCode = 2;
                }
                if (currentCache == null) {
                }
                currentCache2 = currentCache;
                newCache = new Cache(1, resultCode2, packageLastUpdateTime, currentProfileSize);
                if (currentCache2 != null) {
                    newCache.writeOnFile(cacheFile);
                } else {
                    newCache.writeOnFile(cacheFile);
                }
                return setCompilationStatus(resultCode2, hasReferenceProfile2, hasCurrentProfile);
            }
            return setCompilationStatus(262144, false, false);
            throw th;
        }
    }

    private static CompilationStatus setCompilationStatus(int resultCode, boolean hasReferenceProfile, boolean hasCurrentProfile) {
        CompilationStatus compilationStatus = new CompilationStatus(resultCode, hasReferenceProfile, hasCurrentProfile);
        sCompilationStatus = compilationStatus;
        sFuture.set(compilationStatus);
        return sCompilationStatus;
    }

    private static long getPackageLastUpdateTime(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getPackageInfo(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static ListenableFuture<CompilationStatus> getCompilationStatusAsync() {
        return sFuture;
    }

    static class Cache {
        private static final int SCHEMA = 1;
        final long mInstalledCurrentProfileSize;
        final long mPackageLastUpdateTime;
        final int mResultCode;
        final int mSchema;

        Cache(int schema, int resultCode, long packageLastUpdateTime, long installedCurrentProfileSize) {
            this.mSchema = schema;
            this.mResultCode = resultCode;
            this.mPackageLastUpdateTime = packageLastUpdateTime;
            this.mInstalledCurrentProfileSize = installedCurrentProfileSize;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || !(o instanceof Cache)) {
                return false;
            }
            Cache cacheFile = (Cache) o;
            return this.mResultCode == cacheFile.mResultCode && this.mPackageLastUpdateTime == cacheFile.mPackageLastUpdateTime && this.mSchema == cacheFile.mSchema && this.mInstalledCurrentProfileSize == cacheFile.mInstalledCurrentProfileSize;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mResultCode), Long.valueOf(this.mPackageLastUpdateTime), Integer.valueOf(this.mSchema), Long.valueOf(this.mInstalledCurrentProfileSize));
        }

        void writeOnFile(File file) throws IOException {
            file.delete();
            DataOutputStream dos = new DataOutputStream(new FileOutputStream(file));
            try {
                dos.writeInt(this.mSchema);
                dos.writeInt(this.mResultCode);
                dos.writeLong(this.mPackageLastUpdateTime);
                dos.writeLong(this.mInstalledCurrentProfileSize);
                dos.close();
            } catch (Throwable th) {
                try {
                    dos.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        static Cache readFromFile(File file) throws IOException {
            DataInputStream dis = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dis.readInt(), dis.readInt(), dis.readLong(), dis.readLong());
                dis.close();
                return cache;
            } catch (Throwable th) {
                try {
                    dis.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public static class CompilationStatus {
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
        public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;
        public static final int RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE = 196608;
        private static final int RESULT_CODE_ERROR_CODE_BIT_SHIFT = 16;
        public static final int RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST = 65536;
        public static final int RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION = 262144;
        public static final int RESULT_CODE_NO_PROFILE = 0;
        public static final int RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION = 2;
        private final boolean mHasCurrentProfile;
        private final boolean mHasReferenceProfile;
        final int mResultCode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ResultCode {
        }

        CompilationStatus(int resultCode, boolean hasReferenceProfile, boolean hasCurrentProfile) {
            this.mResultCode = resultCode;
            this.mHasCurrentProfile = hasCurrentProfile;
            this.mHasReferenceProfile = hasReferenceProfile;
        }

        public int getProfileInstallResultCode() {
            return this.mResultCode;
        }

        public boolean isCompiledWithProfile() {
            return this.mHasReferenceProfile;
        }

        public boolean hasProfileEnqueuedForCompilation() {
            return this.mHasCurrentProfile;
        }
    }

    private static class Api33Impl {
        private Api33Impl() {
        }

        static PackageInfo getPackageInfo(PackageManager packageManager, Context context) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }
}
