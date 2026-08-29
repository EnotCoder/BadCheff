package org.godotengine.godot.utils;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.io.file.FileAccessHandler;

/* JADX INFO: compiled from: BenchmarkUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u001a \u0010\u0019\u001a\u00020\u00162\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0007\u001a\"\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0010H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u001a\u0010\u0002\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006\"~\u0010\u0007\u001ar\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \n*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t0\t\u0012\f\u0012\n \n*\u0004\u0018\u00010\u000b0\u000b \n*8\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \n*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t0\t\u0012\f\u0012\n \n*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\f0\bX\u0082\u0004¢\u0006\u0002\n\u0000\"~\u0010\r\u001ar\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \n*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t0\t\u0012\f\u0012\n \n*\u0004\u0018\u00010\u000e0\u000e \n*8\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001 \n*\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t0\t\u0012\f\u0012\n \n*\u0004\u0018\u00010\u000e0\u000e\u0018\u00010\f0\bX\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"TAG", "", "benchmarkFile", "getBenchmarkFile", "()Ljava/lang/String;", "setBenchmarkFile", "(Ljava/lang/String;)V", "benchmarkTracker", "", "Lkotlin/Pair;", "kotlin.jvm.PlatformType", "", "", "startBenchmarkFrom", "", "useBenchmark", "", "getUseBenchmark", "()Z", "setUseBenchmark", "(Z)V", "beginBenchmarkMeasure", "", "scope", "label", "dumpBenchmark", "fileAccessHandler", "Lorg/godotengine/godot/io/file/FileAccessHandler;", "filepath", "endBenchmarkMeasure", "lib_templateDebug"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class BenchmarkUtils {
    private static final String TAG = "GodotBenchmark";
    private static boolean useBenchmark;
    private static String benchmarkFile = "";
    private static final Map<Pair<String, String>, Long> startBenchmarkFrom = Collections.synchronizedMap(new LinkedHashMap());
    private static final Map<Pair<String, String>, Double> benchmarkTracker = Collections.synchronizedMap(new LinkedHashMap());

    public static final void dumpBenchmark() {
        dumpBenchmark$default(null, null, 3, null);
    }

    public static final void dumpBenchmark(FileAccessHandler fileAccessHandler) {
        dumpBenchmark$default(fileAccessHandler, null, 2, null);
    }

    public static final void endBenchmarkMeasure(String scope, String label) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(label, "label");
        endBenchmarkMeasure$default(scope, label, false, 4, null);
    }

    public static final boolean getUseBenchmark() {
        return useBenchmark;
    }

    public static final void setUseBenchmark(boolean z) {
        useBenchmark = z;
    }

    public static final String getBenchmarkFile() {
        return benchmarkFile;
    }

    public static final void setBenchmarkFile(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        benchmarkFile = str;
    }

    public static final void beginBenchmarkMeasure(String scope, String label) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(label, "label");
    }

    public static /* synthetic */ void endBenchmarkMeasure$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        endBenchmarkMeasure(str, str2, z);
    }

    public static final void endBenchmarkMeasure(String scope, String label, boolean dumpBenchmark) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(label, "label");
    }

    public static /* synthetic */ void dumpBenchmark$default(FileAccessHandler fileAccessHandler, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            fileAccessHandler = null;
        }
        if ((i & 2) != 0) {
            str = benchmarkFile;
        }
        dumpBenchmark(fileAccessHandler, str);
    }

    public static final void dumpBenchmark(FileAccessHandler fileAccessHandler, String filepath) {
    }
}
