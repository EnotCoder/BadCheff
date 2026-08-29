package org.godotengine.godot;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Looper;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.vending.expansion.downloader.Helpers;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.input.GodotEditText;
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.io.FilePicker;
import org.godotengine.godot.io.directory.DirectoryAccessHandler;
import org.godotengine.godot.io.file.FileAccessHandler;
import org.godotengine.godot.plugin.AndroidRuntimePlugin;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.GodotPluginRegistry;
import org.godotengine.godot.tts.GodotTTS;
import org.godotengine.godot.utils.BenchmarkUtils;
import org.godotengine.godot.utils.CommandLineFileParser;
import org.godotengine.godot.utils.DialogUtils;
import org.godotengine.godot.utils.GodotNetUtils;
import org.godotengine.godot.utils.PermissionsUtil;
import org.godotengine.godot.xr.XRMode;

/* JADX INFO: compiled from: Godot.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0015\n\u0002\b!\u0018\u0000 Ô\u00012\u00020\u0001:\u0002Ô\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J$\u0010\\\u001a\u00020]2\b\b\u0001\u0010^\u001a\u00020_2\b\b\u0001\u0010`\u001a\u00020_2\b\u0010a\u001a\u0004\u0018\u00010PJ$\u0010\\\u001a\u00020]2\u0006\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020\t2\n\b\u0002\u0010a\u001a\u0004\u0018\u00010PH\u0007J\b\u0010d\u001a\u00020\u000fH\u0002J\u001b\u0010e\u001a\u00020_2\f\u0010f\u001a\b\u0012\u0004\u0012\u00020\t0gH\u0003¢\u0006\u0002\u0010hJ\u0014\u0010i\u001a\u00020]2\n\b\u0002\u0010j\u001a\u0004\u0018\u00010PH\u0007J\u0018\u0010k\u001a\u00020]2\u0006\u0010l\u001a\u00020\u000f2\b\b\u0002\u0010m\u001a\u00020\u000fJ\u0010\u0010n\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020_H\u0003J\b\u0010p\u001a\u00020_H\u0003J\b\u0010q\u001a\u0004\u0018\u00010rJ\b\u0010s\u001a\u00020_H\u0003J\b\u0010t\u001a\u00020\tH\u0003J\u0006\u0010u\u001a\u00020\tJ\u000e\u0010v\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0013\u0010w\u001a\b\u0012\u0004\u0012\u00020\t0gH\u0003¢\u0006\u0002\u0010xJ\u0015\u0010y\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010g¢\u0006\u0002\u0010xJ\n\u0010z\u001a\u0004\u0018\u00010\tH\u0003J\u0006\u0010{\u001a\u00020\u000fJ\u0010\u0010|\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020\tH\u0003J\b\u0010~\u001a\u00020]H\u0003J\b\u0010\u007f\u001a\u00020\u000fH\u0003J\t\u0010\u0080\u0001\u001a\u00020\u000fH\u0003J\u0007\u0010\u0081\u0001\u001a\u00020\u000fJ\t\u0010\u0082\u0001\u001a\u00020\u000fH\u0007J\u0007\u0010\u0083\u0001\u001a\u00020\u000fJ\t\u0010\u0084\u0001\u001a\u00020\u000fH\u0002J\t\u0010\u0085\u0001\u001a\u00020\u000fH\u0002J\u0007\u0010\u0086\u0001\u001a\u00020\u000fJ\u0015\u0010\u0087\u0001\u001a\u00020\u000f2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0002J\u001b\u0010\u008a\u0001\u001a\u00020]2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0003J\u0012\u0010\u008d\u0001\u001a\u00020]2\u0007\u0010\u008e\u0001\u001a\u00020\tH\u0003J\u0011\u0010\u008f\u0001\u001a\u00020]2\u0006\u0010l\u001a\u00020\u000fH\u0003J\u001b\u0010\u0090\u0001\u001a\u00020]2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0003J\u0012\u0010\u0091\u0001\u001a\u00020]2\u0007\u0010\u0092\u0001\u001a\u00020\tH\u0003J6\u0010\u0093\u0001\u001a\u00020_2\u0007\u0010\u0094\u0001\u001a\u00020\t2\u0007\u0010\u0095\u0001\u001a\u00020\t2\u0007\u0010\u0096\u0001\u001a\u00020\t2\u0007\u0010\u0097\u0001\u001a\u00020\t2\u0007\u0010\u0098\u0001\u001a\u00020\tH\u0003J\u0012\u0010\u0099\u0001\u001a\u00020_2\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0003J\u001b\u0010\u009b\u0001\u001a\u00020\u000f2\u0007\u0010\u009c\u0001\u001a\u00020\t2\u0007\u0010\u009d\u0001\u001a\u00020\tH\u0002J%\u0010\u009e\u0001\u001a\u00020]2\u0007\u0010\u009f\u0001\u001a\u00020_2\u0007\u0010 \u0001\u001a\u00020_2\n\u0010¡\u0001\u001a\u0005\u0018\u00010¢\u0001J\u0007\u0010£\u0001\u001a\u00020]J\u0011\u0010¤\u0001\u001a\u00020]2\b\u0010¥\u0001\u001a\u00030¦\u0001J\u000f\u0010§\u0001\u001a\u00020]2\u0006\u0010D\u001a\u00020EJ\u000f\u0010¨\u0001\u001a\u00020]2\u0006\u0010D\u001a\u00020EJ\t\u0010©\u0001\u001a\u00020]H\u0002J\t\u0010ª\u0001\u001a\u00020]H\u0002J\t\u0010«\u0001\u001a\u00020]H\u0003J\u0010\u0010¬\u0001\u001a\u00020\u000f2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\u001f\u0010®\u0001\u001a\u0004\u0018\u00010\r2\u0007\u0010\u00ad\u0001\u001a\u00020E2\t\b\u0002\u0010¯\u0001\u001a\u00020\rH\u0007J\u0010\u0010°\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ1\u0010±\u0001\u001a\u00020]2\u0007\u0010\u009f\u0001\u001a\u00020_2\u000f\u0010²\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0g2\b\u0010³\u0001\u001a\u00030´\u0001¢\u0006\u0003\u0010µ\u0001J\u0010\u0010¶\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\u0010\u0010·\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\u0010\u0010¸\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\t\u0010¹\u0001\u001a\u00020]H\u0002J\u0012\u0010º\u0001\u001a\u00020\u000f2\t\u0010»\u0001\u001a\u0004\u0018\u00010\tJ\u0007\u0010¼\u0001\u001a\u00020\u000fJ\t\u0010½\u0001\u001a\u00020rH\u0002J\t\u0010¾\u0001\u001a\u00020]H\u0002J\u0010\u0010¿\u0001\u001a\u00020]2\u0007\u0010À\u0001\u001a\u00020PJ\u0010\u0010Á\u0001\u001a\u00020]2\u0007\u0010À\u0001\u001a\u00020PJ\u0012\u0010Â\u0001\u001a\u00020]2\t\u0010Ã\u0001\u001a\u0004\u0018\u00010\tJ\u0011\u0010Ä\u0001\u001a\u00020]2\u0006\u0010l\u001a\u00020\u000fH\u0002J.\u0010Å\u0001\u001a\u00020]2\u0006\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t2\r\u0010Æ\u0001\u001a\b\u0012\u0004\u0012\u00020\t0gH\u0003¢\u0006\u0003\u0010Ç\u0001J9\u0010È\u0001\u001a\u00020]2\u0007\u0010É\u0001\u001a\u00020\t2\u0007\u0010Ê\u0001\u001a\u00020\t2\u0007\u0010Ë\u0001\u001a\u00020_2\r\u0010Ì\u0001\u001a\b\u0012\u0004\u0012\u00020\t0gH\u0003¢\u0006\u0003\u0010Í\u0001J\"\u0010Î\u0001\u001a\u00020]2\u0006\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t2\u0007\u0010Ï\u0001\u001a\u00020\tH\u0003J\t\u0010Ð\u0001\u001a\u00020\u000fH\u0002J\u001b\u0010Ñ\u0001\u001a\u00020]2\u0007\u0010Ò\u0001\u001a\u00020_2\u0007\u0010Ó\u0001\u001a\u00020_H\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001d\u0010%\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b'\u0010(R\u000e\u0010+\u001a\u00020,X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010-\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010*\u001a\u0004\b.\u0010(R\u001d\u00100\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010*\u001a\u0004\b1\u0010(R\u001d\u00103\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010*\u001a\u0004\b4\u0010(R\u000e\u00106\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010;\u001a\u00020<¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u001b\u0010?\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010*\u001a\u0004\bA\u0010BR\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010F\u001a\u0004\u0018\u00010GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u000e\u0010L\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010N\u001a\b\u0012\u0004\u0012\u00020P0OX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010Q\u001a\u00020R¢\u0006\b\n\u0000\u001a\u0004\bS\u0010TR\u000e\u0010U\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020YX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020[X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006Õ\u0001"}, d2 = {"Lorg/godotengine/godot/Godot;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "accelerometerEnabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "commandLine", "", "", "commandLineFileParser", "Lorg/godotengine/godot/utils/CommandLineFileParser;", "containerLayout", "Landroid/widget/FrameLayout;", "darkMode", "", "directoryAccessHandler", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;", "getDirectoryAccessHandler", "()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;", "expansionPackPath", "fileAccessHandler", "Lorg/godotengine/godot/io/file/FileAccessHandler;", "getFileAccessHandler", "()Lorg/godotengine/godot/io/file/FileAccessHandler;", "godotInputHandler", "Lorg/godotengine/godot/input/GodotInputHandler;", "godotMainLoopStarted", "gravityEnabled", "gyroscopeEnabled", "initializationStarted", "io", "Lorg/godotengine/godot/GodotIO;", "getIo", "()Lorg/godotengine/godot/GodotIO;", "setIo", "(Lorg/godotengine/godot/GodotIO;)V", "mAccelerometer", "Landroid/hardware/Sensor;", "getMAccelerometer", "()Landroid/hardware/Sensor;", "mAccelerometer$delegate", "Lkotlin/Lazy;", "mClipboard", "Landroid/content/ClipboardManager;", "mGravity", "getMGravity", "mGravity$delegate", "mGyroscope", "getMGyroscope", "mGyroscope$delegate", "mMagnetometer", "getMMagnetometer", "mMagnetometer$delegate", "mSensorManager", "Landroid/hardware/SensorManager;", "magnetometerEnabled", "nativeLayerInitializeCompleted", "nativeLayerSetupCompleted", "netUtils", "Lorg/godotengine/godot/utils/GodotNetUtils;", "getNetUtils", "()Lorg/godotengine/godot/utils/GodotNetUtils;", "pluginRegistry", "Lorg/godotengine/godot/plugin/GodotPluginRegistry;", "getPluginRegistry", "()Lorg/godotengine/godot/plugin/GodotPluginRegistry;", "pluginRegistry$delegate", "primaryHost", "Lorg/godotengine/godot/GodotHost;", "renderView", "Lorg/godotengine/godot/GodotRenderView;", "getRenderView", "()Lorg/godotengine/godot/GodotRenderView;", "setRenderView", "(Lorg/godotengine/godot/GodotRenderView;)V", "renderViewInitialized", "resumed", "runOnTerminate", "Ljava/util/concurrent/atomic/AtomicReference;", "Ljava/lang/Runnable;", "tts", "Lorg/godotengine/godot/tts/GodotTTS;", "getTts", "()Lorg/godotengine/godot/tts/GodotTTS;", "useApkExpansion", "useDebugOpengl", "useImmersive", "vibratorService", "Landroid/os/Vibrator;", "xrMode", "Lorg/godotengine/godot/xr/XRMode;", "alert", "", "messageResId", "", "titleResId", "okCallback", "message", "title", "canFallbackToOpenGL", "createNewGodotInstance", "args", "", "([Ljava/lang/String;)I", "destroyAndKillProcess", "destroyRunnable", "enableImmersiveMode", "enabled", "override", "forceQuit", "instanceId", "getAccentColor", "getActivity", "Landroid/app/Activity;", "getBaseColor", "getCACertificates", "getClipboard", "getCommandLine", "getGDExtensionConfigFiles", "()[Ljava/lang/String;", "getGrantedPermissions", "getInputFallbackMapping", "hasClipboard", "hasFeature", "feature", "initInputDevices", "isDarkMode", "isDarkModeSupported", "isEditorHint", "isInImmersiveMode", "isInitialized", "isNativeInitialized", "isOnUiThread", "isProjectManagerHint", "meetsVulkanRequirements", "packageManager", "Landroid/content/pm/PackageManager;", "nativeBeginBenchmarkMeasure", "scope", "label", "nativeDumpBenchmark", "benchmarkFile", "nativeEnableImmersiveMode", "nativeEndBenchmarkMeasure", "nativeOnEditorWorkspaceSelected", "workspace", "nativeSignApk", "inputPath", "outputPath", "keystorePath", "keystoreUser", "keystorePassword", "nativeVerifyApk", "apkPath", "obbIsCorrupted", "f", "mainPackMd5", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "onDestroy", "onGodotMainLoopStarted", "onGodotSetupCompleted", "onGodotTerminating", "onInitNativeLayer", "host", "onInitRenderView", "providedContainerLayout", "onPause", "onRequestPermissionsResult", "permissions", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onResume", "onStart", "onStop", "registerSensorsIfNeeded", "requestPermission", "name", "requestPermissions", "requireActivity", "restart", "runOnRenderThread", "action", "runOnUiThread", "setClipboard", "text", "setKeepScreenOn", "showDialog", "buttons", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "showFilePicker", "currentDirectory", "filename", "fileMode", "filters", "(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V", "showInputDialog", "existingText", "usesVulkan", "vibrate", "durationMs", "amplitude", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Godot {
    public static final String EDITOR_FLAVOR = "editor";
    public static final String TEMPLATE_FLAVOR = "template";
    private final AtomicBoolean accelerometerEnabled;
    private List<String> commandLine;
    private final CommandLineFileParser commandLineFileParser;
    private FrameLayout containerLayout;
    private final Context context;
    private boolean darkMode;
    private final DirectoryAccessHandler directoryAccessHandler;
    private String expansionPackPath;
    private final FileAccessHandler fileAccessHandler;
    private final GodotInputHandler godotInputHandler;
    private final AtomicBoolean godotMainLoopStarted;
    private final AtomicBoolean gravityEnabled;
    private final AtomicBoolean gyroscopeEnabled;
    private boolean initializationStarted;
    private GodotIO io;

    /* JADX INFO: renamed from: mAccelerometer$delegate, reason: from kotlin metadata */
    private final Lazy mAccelerometer;
    private final ClipboardManager mClipboard;

    /* JADX INFO: renamed from: mGravity$delegate, reason: from kotlin metadata */
    private final Lazy mGravity;

    /* JADX INFO: renamed from: mGyroscope$delegate, reason: from kotlin metadata */
    private final Lazy mGyroscope;

    /* JADX INFO: renamed from: mMagnetometer$delegate, reason: from kotlin metadata */
    private final Lazy mMagnetometer;
    private final SensorManager mSensorManager;
    private final AtomicBoolean magnetometerEnabled;
    private boolean nativeLayerInitializeCompleted;
    private boolean nativeLayerSetupCompleted;
    private final GodotNetUtils netUtils;

    /* JADX INFO: renamed from: pluginRegistry$delegate, reason: from kotlin metadata */
    private final Lazy pluginRegistry;
    private GodotHost primaryHost;
    private GodotRenderView renderView;
    private boolean renderViewInitialized;
    private boolean resumed;
    private final AtomicReference<Runnable> runOnTerminate;
    private final GodotTTS tts;
    private boolean useApkExpansion;
    private boolean useDebugOpengl;
    private final AtomicBoolean useImmersive;
    private final Vibrator vibratorService;
    private XRMode xrMode;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = Godot.class.getSimpleName();

    public final void alert(String message, String title) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(title, "title");
        alert$default(this, message, title, null, 4, null);
    }

    public final void destroyAndKillProcess() {
        destroyAndKillProcess$default(this, null, 1, null);
    }

    public final FrameLayout onInitRenderView(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        return onInitRenderView$default(this, host, null, 2, null);
    }

    public Godot(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        Object systemService = context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        this.mSensorManager = (SensorManager) systemService;
        Object systemService2 = context.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.content.ClipboardManager");
        this.mClipboard = (ClipboardManager) systemService2;
        Object systemService3 = context.getSystemService("vibrator");
        Intrinsics.checkNotNull(systemService3, "null cannot be cast to non-null type android.os.Vibrator");
        this.vibratorService = (Vibrator) systemService3;
        this.pluginRegistry = LazyKt.lazy(new Function0<GodotPluginRegistry>() { // from class: org.godotengine.godot.Godot$pluginRegistry$2
            @Override // kotlin.jvm.functions.Function0
            public final GodotPluginRegistry invoke() {
                return GodotPluginRegistry.getPluginRegistry();
            }
        });
        this.accelerometerEnabled = new AtomicBoolean(false);
        this.mAccelerometer = LazyKt.lazy(new Function0<Sensor>() { // from class: org.godotengine.godot.Godot$mAccelerometer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Sensor invoke() {
                return this.this$0.mSensorManager.getDefaultSensor(1);
            }
        });
        this.gravityEnabled = new AtomicBoolean(false);
        this.mGravity = LazyKt.lazy(new Function0<Sensor>() { // from class: org.godotengine.godot.Godot$mGravity$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Sensor invoke() {
                return this.this$0.mSensorManager.getDefaultSensor(9);
            }
        });
        this.magnetometerEnabled = new AtomicBoolean(false);
        this.mMagnetometer = LazyKt.lazy(new Function0<Sensor>() { // from class: org.godotengine.godot.Godot$mMagnetometer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Sensor invoke() {
                return this.this$0.mSensorManager.getDefaultSensor(2);
            }
        });
        this.gyroscopeEnabled = new AtomicBoolean(false);
        this.mGyroscope = LazyKt.lazy(new Function0<Sensor>() { // from class: org.godotengine.godot.Godot$mGyroscope$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Sensor invoke() {
                return this.this$0.mSensorManager.getDefaultSensor(4);
            }
        });
        this.tts = new GodotTTS(context);
        this.directoryAccessHandler = new DirectoryAccessHandler(context);
        this.fileAccessHandler = new FileAccessHandler(context);
        this.netUtils = new GodotNetUtils(context);
        this.commandLineFileParser = new CommandLineFileParser();
        this.godotInputHandler = new GodotInputHandler(context, this);
        this.runOnTerminate = new AtomicReference<>();
        this.godotMainLoopStarted = new AtomicBoolean(false);
        this.commandLine = new ArrayList();
        this.xrMode = XRMode.REGULAR;
        this.expansionPackPath = "";
        this.useImmersive = new AtomicBoolean(false);
    }

    /* JADX INFO: compiled from: Godot.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/godotengine/godot/Godot$Companion;", "", "()V", "EDITOR_FLAVOR", "", "TAG", "kotlin.jvm.PlatformType", "TEMPLATE_FLAVOR", "isEditorBuild", "", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEditorBuild() {
            return false;
        }
    }

    private final GodotPluginRegistry getPluginRegistry() {
        Object value = this.pluginRegistry.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (GodotPluginRegistry) value;
    }

    private final Sensor getMAccelerometer() {
        return (Sensor) this.mAccelerometer.getValue();
    }

    private final Sensor getMGravity() {
        return (Sensor) this.mGravity.getValue();
    }

    private final Sensor getMMagnetometer() {
        return (Sensor) this.mMagnetometer.getValue();
    }

    private final Sensor getMGyroscope() {
        return (Sensor) this.mGyroscope.getValue();
    }

    public final GodotTTS getTts() {
        return this.tts;
    }

    public final DirectoryAccessHandler getDirectoryAccessHandler() {
        return this.directoryAccessHandler;
    }

    public final FileAccessHandler getFileAccessHandler() {
        return this.fileAccessHandler;
    }

    public final GodotNetUtils getNetUtils() {
        return this.netUtils;
    }

    public final GodotIO getIo() {
        return this.io;
    }

    public final void setIo(GodotIO godotIO) {
        this.io = godotIO;
    }

    public final GodotRenderView getRenderView() {
        return this.renderView;
    }

    public final void setRenderView(GodotRenderView godotRenderView) {
        this.renderView = godotRenderView;
    }

    private final boolean isNativeInitialized() {
        return this.nativeLayerInitializeCompleted && this.nativeLayerSetupCompleted;
    }

    public final boolean isInitialized() {
        return this.initializationStarted && isNativeInitialized() && this.renderViewInitialized;
    }

    public final Activity getActivity() {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            return godotHost.getActivity();
        }
        return null;
    }

    private final Activity requireActivity() {
        Activity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Host activity must be non-null");
    }

    public final void onCreate(GodotHost primaryHost) throws Throwable {
        Configuration configuration;
        Intrinsics.checkNotNullParameter(primaryHost, "primaryHost");
        if (this.primaryHost != null || this.initializationStarted) {
            Log.d(TAG, "OnCreate already invoked");
            return;
        }
        String str = TAG;
        Log.v(str, "OnCreate: " + primaryHost);
        Resources resources = this.context.getResources();
        boolean z = false;
        int i = 0;
        this.darkMode = (resources == null || (configuration = resources.getConfiguration()) == null || (configuration.uiMode & 48) != 32) ? false : true;
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "Godot::onCreate");
        try {
            try {
                try {
                    this.primaryHost = primaryHost;
                    Activity activityRequireActivity = requireActivity();
                    activityRequireActivity.getWindow().addFlags(2097152);
                    Log.v(str, "Initializing Godot plugin registry");
                    Set setMutableSetOf = SetsKt.mutableSetOf(new AndroidRuntimePlugin(this));
                    Set<GodotPlugin> hostPlugins = primaryHost.getHostPlugins(this);
                    Intrinsics.checkNotNullExpressionValue(hostPlugins, "getHostPlugins(...)");
                    setMutableSetOf.addAll(hostPlugins);
                    GodotPluginRegistry.initializePluginRegistry(this, setMutableSetOf);
                    if (this.io == null) {
                        this.io = new GodotIO(activityRequireActivity);
                    }
                    this.commandLine = getCommandLine();
                    ArrayList arrayList = new ArrayList();
                    int i2 = 0;
                    String str2 = null;
                    String str3 = null;
                    while (i2 < this.commandLine.size()) {
                        boolean z2 = i2 < this.commandLine.size() - 1;
                        if (Intrinsics.areEqual(this.commandLine.get(i2), XRMode.REGULAR.cmdLineArg)) {
                            this.xrMode = XRMode.REGULAR;
                        } else if (Intrinsics.areEqual(this.commandLine.get(i2), XRMode.OPENXR.cmdLineArg)) {
                            this.xrMode = XRMode.OPENXR;
                        } else if (Intrinsics.areEqual(this.commandLine.get(i2), "--debug_opengl")) {
                            this.useDebugOpengl = true;
                        } else if (Intrinsics.areEqual(this.commandLine.get(i2), "--fullscreen")) {
                            this.useImmersive.set(true);
                            arrayList.add(this.commandLine.get(i2));
                        } else if (Intrinsics.areEqual(this.commandLine.get(i2), "--use_apk_expansion")) {
                            this.useApkExpansion = true;
                        } else if (z2 && Intrinsics.areEqual(this.commandLine.get(i2), "--apk_expansion_md5")) {
                            String str4 = this.commandLine.get(i2 + 1);
                            i2++;
                            str3 = str4;
                        } else if (z2 && Intrinsics.areEqual(this.commandLine.get(i2), "--apk_expansion_key")) {
                            String str5 = this.commandLine.get(i2 + 1);
                            SharedPreferences.Editor editorEdit = activityRequireActivity.getSharedPreferences("app_data_keys", i).edit();
                            editorEdit.putString("store_public_key", str5);
                            editorEdit.apply();
                            i2++;
                            str2 = str5;
                        } else if (Intrinsics.areEqual(this.commandLine.get(i2), "--benchmark")) {
                            BenchmarkUtils.setUseBenchmark(true);
                            arrayList.add(this.commandLine.get(i2));
                        } else if (z2 && Intrinsics.areEqual(this.commandLine.get(i2), "--benchmark-file")) {
                            BenchmarkUtils.setUseBenchmark(true);
                            arrayList.add(this.commandLine.get(i2));
                            BenchmarkUtils.setBenchmarkFile(this.commandLine.get(i2 + 1));
                            arrayList.add(this.commandLine.get(i2 + 1));
                            i2++;
                        } else {
                            if (StringsKt.trim((CharSequence) this.commandLine.get(i2)).toString().length() > 0) {
                                arrayList.add(this.commandLine.get(i2));
                            }
                        }
                        i2++;
                        i = 0;
                    }
                    this.commandLine = arrayList.isEmpty() ? new ArrayList() : arrayList;
                    if (this.useApkExpansion && str3 != null && str2 != null) {
                        try {
                            String saveFilePath = Helpers.getSaveFilePath(this.context);
                            Intrinsics.checkNotNullExpressionValue(saveFilePath, "getSaveFilePath(...)");
                            this.expansionPackPath = saveFilePath;
                            this.expansionPackPath = saveFilePath + "/main." + activityRequireActivity.getPackageManager().getPackageInfo(activityRequireActivity.getPackageName(), 0).versionCode + "." + activityRequireActivity.getPackageName() + ".obb";
                        } catch (Exception e) {
                            Log.e(TAG, "Unable to build full path to the app's expansion files", e);
                        }
                        File file = new File(this.expansionPackPath);
                        boolean z3 = true;
                        if (!file.exists()) {
                            z3 = false;
                        } else if (obbIsCorrupted(this.expansionPackPath, str3)) {
                            try {
                                file.delete();
                            } catch (Exception e2) {
                            }
                            z3 = false;
                        }
                        if (!z3) {
                            throw new IllegalArgumentException("Invalid expansion pack");
                        }
                    }
                    this.initializationStarted = true;
                    BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onCreate", false, 4, null);
                } catch (Exception e3) {
                    this.primaryHost = null;
                    this.initializationStarted = false;
                    throw e3;
                }
            } catch (Throwable th) {
                th = th;
                z = false;
                BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onCreate", z, 4, null);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onCreate", z, 4, null);
            throw th;
        }
    }

    public static /* synthetic */ void enableImmersiveMode$default(Godot godot, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        godot.enableImmersiveMode(z, z2);
    }

    public final void enableImmersiveMode(boolean enabled, boolean override) {
        Window window;
        int types;
        Activity activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        if (!this.useImmersive.compareAndSet(!enabled, enabled) && !override) {
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, !enabled);
        WindowInsetsControllerCompat controller = new WindowInsetsControllerCompat(window, window.getDecorView());
        if (enabled) {
            controller.hide(WindowInsetsCompat.Type.systemBars());
            controller.setSystemBarsBehavior(2);
            return;
        }
        TypedValue fullScreenThemeValue = new TypedValue();
        boolean z = true;
        if (activity.getTheme().resolveAttribute(android.R.attr.windowFullscreen, fullScreenThemeValue, true) && fullScreenThemeValue.type == 18) {
            if (fullScreenThemeValue.data != 0) {
                z = false;
            }
        } else if (INSTANCE.isEditorBuild()) {
            z = false;
        }
        boolean hasStatusBar = z;
        if (hasStatusBar) {
            types = WindowInsetsCompat.Type.navigationBars() | WindowInsetsCompat.Type.statusBars();
        } else {
            types = WindowInsetsCompat.Type.navigationBars();
        }
        controller.show(types);
    }

    private final void nativeEnableImmersiveMode(final boolean enabled) {
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Godot.nativeEnableImmersiveMode$lambda$0(this.f$0, enabled);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeEnableImmersiveMode$lambda$0(Godot this$0, boolean $enabled) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        enableImmersiveMode$default(this$0, $enabled, false, 2, null);
    }

    public final boolean isInImmersiveMode() {
        return this.useImmersive.get();
    }

    public final boolean onInitNativeLayer(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        if (!this.initializationStarted) {
            throw new IllegalStateException("OnCreate must be invoked successfully prior to initializing the native layer");
        }
        boolean z = true;
        if (isNativeInitialized()) {
            Log.d(TAG, "OnInitNativeLayer already invoked");
            return true;
        }
        if (!Intrinsics.areEqual(host, this.primaryHost)) {
            Log.e(TAG, "Native initialization is only supported for the primary host");
            return false;
        }
        String str = TAG;
        Log.v(str, "OnInitNativeLayer: " + host);
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "Godot::onInitNativeLayer");
        try {
            if (this.expansionPackPath.length() <= 0) {
                z = false;
            }
            if (z) {
                this.commandLine.add("--main-pack");
                this.commandLine.add(this.expansionPackPath);
            }
            Activity activity = requireActivity();
            if (!this.nativeLayerInitializeCompleted) {
                boolean zInitialize = GodotLib.initialize(activity, this, activity.getAssets(), this.io, this.netUtils, this.directoryAccessHandler, this.fileAccessHandler, this.useApkExpansion);
                this.nativeLayerInitializeCompleted = zInitialize;
                Log.v(str, "Godot native layer initialization completed: " + zInitialize);
            }
            if (this.nativeLayerInitializeCompleted && !this.nativeLayerSetupCompleted) {
                Collection $this$toTypedArray$iv = this.commandLine;
                boolean upVar = GodotLib.setup((String[]) $this$toTypedArray$iv.toArray(new String[0]), this.tts);
                this.nativeLayerSetupCompleted = upVar;
                if (!upVar) {
                    throw new IllegalStateException("Unable to setup the Godot engine! Aborting...");
                }
                Log.v(str, "Godot native layer setup completed");
            }
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitNativeLayer", false, 4, null);
            return isNativeInitialized();
        } catch (Throwable th) {
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitNativeLayer", false, 4, null);
            throw th;
        }
    }

    public static /* synthetic */ FrameLayout onInitRenderView$default(Godot godot, GodotHost godotHost, FrameLayout frameLayout, int i, Object obj) {
        if ((i & 2) != 0) {
            frameLayout = new FrameLayout(godotHost.getActivity());
        }
        return godot.onInitRenderView(godotHost, frameLayout);
    }

    public final FrameLayout onInitRenderView(GodotHost host, FrameLayout providedContainerLayout) {
        GodotGLRenderView godotGLRenderView;
        FrameLayout frameLayout;
        GodotRenderView godotRenderView;
        GodotRenderView godotGLRenderView2;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(providedContainerLayout, "providedContainerLayout");
        if (!isNativeInitialized()) {
            throw new IllegalStateException("onInitNativeLayer() must be invoked successfully prior to initializing the render view");
        }
        Log.v(TAG, "OnInitRenderView: " + host);
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "Godot::onInitRenderView");
        try {
            Activity activity = host.getActivity();
            Intrinsics.checkNotNullExpressionValue(activity, "getActivity(...)");
            this.containerLayout = providedContainerLayout;
            if (providedContainerLayout != null) {
                providedContainerLayout.removeAllViews();
            }
            FrameLayout frameLayout2 = this.containerLayout;
            if (frameLayout2 != null) {
                frameLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            }
            GodotEditText editText = new GodotEditText(activity);
            editText.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) activity.getResources().getDimension(R.dimen.text_edit_height)));
            editText.setBackgroundColor(0);
            FrameLayout frameLayout3 = this.containerLayout;
            if (frameLayout3 != null) {
                frameLayout3.addView(editText);
            }
            if (usesVulkan()) {
                if (meetsVulkanRequirements(activity.getPackageManager())) {
                    godotGLRenderView2 = new GodotVulkanRenderView(host, this, this.godotInputHandler);
                } else {
                    if (!canFallbackToOpenGL()) {
                        throw new IllegalStateException(activity.getString(R.string.error_missing_vulkan_requirements_message));
                    }
                    godotGLRenderView2 = new GodotGLRenderView(host, this, this.godotInputHandler, this.xrMode, this.useDebugOpengl);
                }
                godotGLRenderView = godotGLRenderView2;
            } else {
                editText = editText;
                godotGLRenderView = new GodotGLRenderView(host, this, this.godotInputHandler, this.xrMode, this.useDebugOpengl);
            }
            this.renderView = godotGLRenderView;
            if (Intrinsics.areEqual(host, this.primaryHost) && (godotRenderView = this.renderView) != null) {
                godotRenderView.startRenderer();
            }
            GodotRenderView it = this.renderView;
            if (it != null && (frameLayout = this.containerLayout) != null) {
                frameLayout.addView(it.getView(), new ViewGroup.LayoutParams(-1, -1));
            }
            editText.setView(this.renderView);
            GodotIO godotIO = this.io;
            if (godotIO != null) {
                godotIO.setEdit(editText);
            }
            final View decorView = activity.getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
            ViewCompat.setWindowInsetsAnimationCallback(decorView, new WindowInsetsAnimationCompat.Callback() { // from class: org.godotengine.godot.Godot.onInitRenderView.2
                private int endBottom;
                private int startBottom;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                public final int getStartBottom() {
                    return this.startBottom;
                }

                public final void setStartBottom(int i) {
                    this.startBottom = i;
                }

                public final int getEndBottom() {
                    return this.endBottom;
                }

                public final void setEndBottom(int i) {
                    this.endBottom = i;
                }

                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                public void onPrepare(WindowInsetsAnimationCompat animation) {
                    Insets insets;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(decorView);
                    this.startBottom = (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime())) == null) ? 0 : insets.bottom;
                }

                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat animation, WindowInsetsAnimationCompat.BoundsCompat bounds) {
                    Insets insets;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    Intrinsics.checkNotNullParameter(bounds, "bounds");
                    WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(decorView);
                    this.endBottom = (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime())) == null) ? 0 : insets.bottom;
                    return bounds;
                }

                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsets, List<WindowInsetsAnimationCompat> animationsList) {
                    Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
                    Intrinsics.checkNotNullParameter(animationsList, "animationsList");
                    WindowInsetsAnimationCompat imeAnimation = null;
                    for (WindowInsetsAnimationCompat animation : animationsList) {
                        if ((animation.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                            imeAnimation = animation;
                            break;
                        }
                    }
                    if (imeAnimation != null) {
                        float interpolatedFraction = imeAnimation.getInterpolatedFraction();
                        float keyboardHeight = (this.startBottom * (1.0f - interpolatedFraction)) + (this.endBottom * interpolatedFraction);
                        GodotLib.setVirtualKeyboardHeight((int) keyboardHeight);
                    }
                    return windowInsets;
                }

                @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                public void onEnd(WindowInsetsAnimationCompat animation) {
                    Intrinsics.checkNotNullParameter(animation, "animation");
                }
            });
            if (Intrinsics.areEqual(host, this.primaryHost)) {
                GodotRenderView godotRenderView2 = this.renderView;
                if (godotRenderView2 != null) {
                    godotRenderView2.queueOnRenderThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            Godot.onInitRenderView$lambda$2(this.f$0);
                        }
                    });
                }
                for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
                    View pluginView = plugin.onMainCreate(activity);
                    if (pluginView != null) {
                        if (plugin.shouldBeOnTop()) {
                            FrameLayout frameLayout4 = this.containerLayout;
                            if (frameLayout4 != null) {
                                frameLayout4.addView(pluginView);
                            }
                        } else {
                            FrameLayout frameLayout5 = this.containerLayout;
                            if (frameLayout5 != null) {
                                frameLayout5.addView(pluginView, 0);
                            }
                        }
                    }
                }
            }
            this.renderViewInitialized = true;
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitRenderView", false, 4, null);
            return this.containerLayout;
        } catch (Throwable th) {
            if (!this.renderViewInitialized) {
                FrameLayout frameLayout6 = this.containerLayout;
                if (frameLayout6 != null) {
                    frameLayout6.removeAllViews();
                }
                this.containerLayout = null;
            }
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitRenderView", false, 4, null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInitRenderView$lambda$2(Godot this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        for (GodotPlugin plugin : this$0.getPluginRegistry().getAllPlugins()) {
            plugin.onRegisterPluginWithGodotNative();
        }
        this$0.setKeepScreenOn(Boolean.parseBoolean(GodotLib.getGlobal("display/window/energy_saving/keep_screen_on")));
    }

    public final void onStart(GodotHost host) {
        GodotRenderView godotRenderView;
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnStart: " + host);
        if (Intrinsics.areEqual(host, this.primaryHost) && (godotRenderView = this.renderView) != null) {
            godotRenderView.onActivityStarted();
        }
    }

    public final void onResume(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnResume: " + host);
        this.resumed = true;
        if (!Intrinsics.areEqual(host, this.primaryHost)) {
            return;
        }
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null) {
            godotRenderView.onActivityResumed();
        }
        registerSensorsIfNeeded();
        enableImmersiveMode(this.useImmersive.get(), true);
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onMainResume();
        }
    }

    private final void registerSensorsIfNeeded() {
        if (!this.resumed || !this.godotMainLoopStarted.get()) {
            return;
        }
        if (this.accelerometerEnabled.get() && getMAccelerometer() != null) {
            this.mSensorManager.registerListener(this.godotInputHandler, getMAccelerometer(), 1);
        }
        if (this.gravityEnabled.get() && getMGravity() != null) {
            this.mSensorManager.registerListener(this.godotInputHandler, getMGravity(), 1);
        }
        if (this.magnetometerEnabled.get() && getMMagnetometer() != null) {
            this.mSensorManager.registerListener(this.godotInputHandler, getMMagnetometer(), 1);
        }
        if (this.gyroscopeEnabled.get() && getMGyroscope() != null) {
            this.mSensorManager.registerListener(this.godotInputHandler, getMGyroscope(), 1);
        }
    }

    public final void onPause(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnPause: " + host);
        this.resumed = false;
        if (!Intrinsics.areEqual(host, this.primaryHost)) {
            return;
        }
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null) {
            godotRenderView.onActivityPaused();
        }
        this.mSensorManager.unregisterListener(this.godotInputHandler);
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onMainPause();
        }
    }

    public final void onStop(GodotHost host) {
        GodotRenderView godotRenderView;
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnStop: " + host);
        if (Intrinsics.areEqual(host, this.primaryHost) && (godotRenderView = this.renderView) != null) {
            godotRenderView.onActivityStopped();
        }
    }

    public final void onDestroy(GodotHost primaryHost) {
        Intrinsics.checkNotNullParameter(primaryHost, "primaryHost");
        Log.v(TAG, "OnDestroy: " + primaryHost);
        if (!Intrinsics.areEqual(this.primaryHost, primaryHost)) {
            return;
        }
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onMainDestroy();
        }
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null) {
            godotRenderView.onActivityDestroyed();
        }
    }

    public final void onConfigurationChanged(Configuration newConfig) {
        GodotInputHandler inputHandler;
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null && (inputHandler = godotRenderView.getInputHandler()) != null) {
            inputHandler.onConfigurationChanged(newConfig);
        }
        boolean newDarkMode = (newConfig.uiMode & 48) == 32;
        if (this.darkMode != newDarkMode) {
            this.darkMode = newDarkMode;
            GodotLib.onNightModeChanged();
        }
    }

    public final void onActivityResult(int requestCode, int resultCode, Intent data) {
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onMainActivityResult(requestCode, resultCode, data);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            FilePicker.INSTANCE.handleActivityResult(this.context, requestCode, resultCode, data);
        }
    }

    public final void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onMainRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        int length = permissions.length;
        for (int i = 0; i < length; i++) {
            GodotLib.requestPermissionResult(permissions[i], grantResults[i] == 0);
        }
    }

    private final void onGodotSetupCompleted() {
        Log.v(TAG, "OnGodotSetupCompleted");
        final boolean longPressEnabled = Boolean.parseBoolean(GodotLib.getGlobal("input_devices/pointing/android/enable_long_press_as_right_click"));
        final boolean panScaleEnabled = Boolean.parseBoolean(GodotLib.getGlobal("input_devices/pointing/android/enable_pan_and_scale_gestures"));
        final String rotaryInputAxisValue = GodotLib.getGlobal("input_devices/pointing/android/rotary_input_scroll_axis");
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Godot.onGodotSetupCompleted$lambda$4(this.f$0, longPressEnabled, panScaleEnabled, rotaryInputAxisValue);
            }
        });
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onGodotSetupCompleted();
        }
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.onGodotSetupCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGodotSetupCompleted$lambda$4(Godot this$0, boolean $longPressEnabled, boolean $panScaleEnabled, String $rotaryInputAxisValue) {
        GodotInputHandler $this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GodotRenderView godotRenderView = this$0.renderView;
        if (godotRenderView != null && ($this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243 = godotRenderView.getInputHandler()) != null) {
            $this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243.enableLongPress($longPressEnabled);
            $this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243.enablePanningAndScalingGestures($panScaleEnabled);
            try {
                $this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243.setRotaryInputAxis(Integer.parseInt($rotaryInputAxisValue));
            } catch (NumberFormatException e) {
                Log.w(TAG, e);
            }
        }
    }

    private final void onGodotMainLoopStarted() {
        Log.v(TAG, "OnGodotMainLoopStarted");
        this.godotMainLoopStarted.set(true);
        this.accelerometerEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_accelerometer")));
        this.gravityEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_gravity")));
        this.gyroscopeEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_gyroscope")));
        this.magnetometerEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_magnetometer")));
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Godot.onGodotMainLoopStarted$lambda$5(this.f$0);
            }
        });
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onGodotMainLoopStarted();
        }
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.onGodotMainLoopStarted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGodotMainLoopStarted$lambda$5(Godot this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.registerSensorsIfNeeded();
        this$0.enableImmersiveMode(this$0.useImmersive.get(), true);
    }

    private final void onGodotTerminating() {
        Log.v(TAG, "OnGodotTerminating");
        Runnable runnable = this.runOnTerminate.get();
        if (runnable != null) {
            runnable.run();
        }
    }

    private final void restart() {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.onGodotRestartRequested(this);
        }
    }

    public final void alert(int messageResId, int titleResId, Runnable okCallback) {
        Activity activity = getActivity();
        Resources res = activity != null ? activity.getResources() : null;
        if (res == null) {
            return;
        }
        String string = res.getString(messageResId);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = res.getString(titleResId);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        alert(string, string2, okCallback);
    }

    public static /* synthetic */ void alert$default(Godot godot, String str, String str2, Runnable runnable, int i, Object obj) {
        if ((i & 4) != 0) {
            runnable = null;
        }
        godot.alert(str, str2, runnable);
    }

    public final void alert(final String message, final String title, final Runnable okCallback) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(title, "title");
        final Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                Godot.alert$lambda$7(activity, message, title, okCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void alert$lambda$7(Activity activity, String message, String title, final Runnable $okCallback) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(title, "$title");
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage(message).setTitle(title);
        builder.setPositiveButton(R.string.dialog_ok, new DialogInterface.OnClickListener() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Godot.alert$lambda$7$lambda$6($okCallback, dialogInterface, i);
            }
        });
        AlertDialog dialog = builder.create();
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void alert$lambda$7$lambda$6(Runnable $okCallback, DialogInterface dialog, int id) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        if ($okCallback != null) {
            $okCallback.run();
        }
        dialog.cancel();
    }

    public final void runOnRenderThread(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null) {
            godotRenderView.queueOnRenderThread(action);
        }
    }

    public final void runOnUiThread(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(action);
    }

    private final boolean isOnUiThread() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    private final boolean usesVulkan() {
        String[] rendererInfo = GodotLib.getRendererInfo();
        String renderingDeviceSource = "ProjectSettings";
        boolean result = false;
        String renderingDevice = rendererInfo[0];
        String rendererSource = "ProjectSettings";
        String renderer = rendererInfo[1];
        List<String> commandLine = getCommandLine();
        int index = commandLine.indexOf("--rendering-method");
        if (index > -1 && commandLine.size() > index + 1) {
            rendererSource = "CommandLine";
            renderer = commandLine.get(index + 1);
        }
        int index2 = commandLine.indexOf("--rendering-driver");
        if (index2 > -1 && commandLine.size() > index2 + 1) {
            renderingDeviceSource = "CommandLine";
            renderingDevice = commandLine.get(index2 + 1);
        }
        if ((Intrinsics.areEqual("forward_plus", renderer) || Intrinsics.areEqual("mobile", renderer)) && Intrinsics.areEqual("vulkan", renderingDevice)) {
            result = true;
        }
        Log.d(TAG, "usesVulkan(): " + result + "\n\t\t\trenderingDevice: " + renderingDevice + " (" + renderingDeviceSource + ")\n\t\t\trenderer: " + renderer + " (" + rendererSource + ")");
        return result;
    }

    private final boolean canFallbackToOpenGL() {
        return Boolean.parseBoolean(GodotLib.getGlobal("rendering/rendering_device/fallback_to_opengl3"));
    }

    private final boolean meetsVulkanRequirements(PackageManager packageManager) {
        if (packageManager == null || Build.VERSION.SDK_INT < 24) {
            return false;
        }
        if (!packageManager.hasSystemFeature("android.hardware.vulkan.level", 1)) {
            Log.w(TAG, "The vulkan hardware level does not meet the minimum requirement: 1");
        }
        return packageManager.hasSystemFeature("android.hardware.vulkan.version", 4194307);
    }

    private final void setKeepScreenOn(final boolean enabled) {
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Godot.setKeepScreenOn$lambda$8(enabled, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setKeepScreenOn$lambda$8(boolean $enabled, Godot this$0) {
        Window window;
        Window window2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if ($enabled) {
            Activity activity = this$0.getActivity();
            if (activity != null && (window2 = activity.getWindow()) != null) {
                window2.addFlags(128);
                return;
            }
            return;
        }
        Activity activity2 = this$0.getActivity();
        if (activity2 != null && (window = activity2.getWindow()) != null) {
            window.clearFlags(128);
        }
    }

    private final boolean isDarkModeSupported() {
        Configuration configuration;
        Resources resources = this.context.getResources();
        boolean z = false;
        if (resources != null && (configuration = resources.getConfiguration()) != null && (configuration.uiMode & 48) == 0) {
            z = true;
        }
        return !z;
    }

    /* JADX INFO: renamed from: isDarkMode, reason: from getter */
    private final boolean getDarkMode() {
        return this.darkMode;
    }

    public final boolean hasClipboard() {
        return this.mClipboard.hasPrimaryClip();
    }

    public final String getClipboard() {
        CharSequence text;
        ClipData clipData = this.mClipboard.getPrimaryClip();
        return (clipData == null || (text = clipData.getItemAt(0).getText()) == null) ? "" : text.toString();
    }

    public final void setClipboard(String text) {
        ClipData clip = ClipData.newPlainText("myLabel", text);
        this.mClipboard.setPrimaryClip(clip);
    }

    private final void showFilePicker(String currentDirectory, String filename, int fileMode, String[] filters) {
        if (Build.VERSION.SDK_INT >= 29) {
            FilePicker.INSTANCE.showFilePicker(this.context, getActivity(), currentDirectory, filename, fileMode, filters);
        }
    }

    private final void showDialog(String title, String message, String[] buttons) {
        Activity it = getActivity();
        if (it != null) {
            DialogUtils.INSTANCE.showDialog$lib_templateDebug(it, title, message, buttons);
        }
    }

    private final void showInputDialog(String title, String message, String existingText) {
        Activity it = getActivity();
        if (it != null) {
            DialogUtils.INSTANCE.showInputDialog$lib_templateDebug(it, title, message, existingText);
        }
    }

    private final int getAccentColor() {
        TypedValue value = new TypedValue();
        this.context.getTheme().resolveAttribute(android.R.attr.colorAccent, value, true);
        return value.data;
    }

    private final int getBaseColor() {
        TypedValue value = new TypedValue();
        this.context.getTheme().resolveAttribute(android.R.attr.colorBackground, value, true);
        return value.data;
    }

    public static /* synthetic */ void destroyAndKillProcess$default(Godot godot, Runnable runnable, int i, Object obj) {
        if ((i & 1) != 0) {
            runnable = null;
        }
        godot.destroyAndKillProcess(runnable);
    }

    public final void destroyAndKillProcess(Runnable destroyRunnable) {
        final GodotHost host = this.primaryHost;
        Activity activity = host != null ? host.getActivity() : null;
        if (host == null || activity == null) {
            if (destroyRunnable != null) {
                destroyRunnable.run();
            }
            forceQuit(0);
        } else {
            this.runOnTerminate.set(destroyRunnable);
            runOnUiThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    Godot.destroyAndKillProcess$lambda$11(this.f$0, host);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAndKillProcess$lambda$11(Godot this$0, GodotHost $host) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDestroy($host);
    }

    private final boolean forceQuit(int instanceId) {
        GodotHost it = this.primaryHost;
        if (it != null) {
            if (instanceId == 0) {
                it.onGodotForceQuit(this);
                return true;
            }
            return it.onGodotForceQuit(instanceId);
        }
        return false;
    }

    public final void onBackPressed() {
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            plugin.onMainBackPressed();
        }
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null) {
            godotRenderView.queueOnRenderThread(new Runnable() { // from class: org.godotengine.godot.Godot$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    GodotLib.back();
                }
            });
        }
    }

    private final void vibrate(int durationMs, int amplitude) {
        if (durationMs > 0 && requestPermission("VIBRATE")) {
            if (Build.VERSION.SDK_INT >= 26) {
                if (amplitude <= -1) {
                    this.vibratorService.vibrate(VibrationEffect.createOneShot(durationMs, -1));
                    return;
                } else {
                    this.vibratorService.vibrate(VibrationEffect.createOneShot(durationMs, amplitude));
                    return;
                }
            }
            this.vibratorService.vibrate(durationMs);
        }
    }

    private final List<String> getCommandLine() {
        List<String> arrayList;
        try {
            CommandLineFileParser commandLineFileParser = this.commandLineFileParser;
            InputStream inputStreamOpen = requireActivity().getAssets().open("_cl_");
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
            arrayList = commandLineFileParser.parseCommandLine(inputStreamOpen);
        } catch (Exception e) {
            arrayList = new ArrayList();
        }
        GodotHost godotHost = this.primaryHost;
        List<String> commandLine = godotHost != null ? godotHost.getCommandLine() : null;
        List<String> list = commandLine;
        if (!(list == null || list.isEmpty())) {
            arrayList.addAll(commandLine);
        }
        return arrayList;
    }

    private final String getInputFallbackMapping() {
        return this.xrMode.inputFallbackMapping;
    }

    public final boolean requestPermission(String name) {
        Activity activity = getActivity();
        if (activity == null) {
            return false;
        }
        return PermissionsUtil.requestPermission(name, activity);
    }

    public final boolean requestPermissions() {
        return PermissionsUtil.requestManifestPermissions(getActivity());
    }

    public final String[] getGrantedPermissions() {
        return PermissionsUtil.getGrantedPermissions(getActivity());
    }

    public final boolean isEditorHint() {
        return INSTANCE.isEditorBuild() && GodotLib.isEditorHint();
    }

    public final boolean isProjectManagerHint() {
        return INSTANCE.isEditorBuild() && GodotLib.isProjectManagerHint();
    }

    private final boolean hasFeature(String feature) {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null ? godotHost.supportsFeature(feature) : false) {
            return true;
        }
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            if (plugin.supportsFeature(feature)) {
                return true;
            }
        }
        return false;
    }

    private final String[] getGDExtensionConfigFiles() {
        Set configFiles = new LinkedHashSet();
        for (GodotPlugin plugin : getPluginRegistry().getAllPlugins()) {
            Set<String> pluginGDExtensionLibrariesPaths = plugin.getPluginGDExtensionLibrariesPaths();
            Intrinsics.checkNotNullExpressionValue(pluginGDExtensionLibrariesPaths, "getPluginGDExtensionLibrariesPaths(...)");
            configFiles.addAll(pluginGDExtensionLibrariesPaths);
        }
        Set $this$toTypedArray$iv = configFiles;
        return (String[]) $this$toTypedArray$iv.toArray(new String[0]);
    }

    private final String getCACertificates() {
        String cACertificates = GodotNetUtils.getCACertificates();
        Intrinsics.checkNotNullExpressionValue(cACertificates, "getCACertificates(...)");
        return cACertificates;
    }

    private final boolean obbIsCorrupted(String f, String mainPackMd5) {
        int numRead;
        int i;
        try {
            InputStream fis = new FileInputStream(f);
            byte[] buffer = new byte[16384];
            MessageDigest complete = MessageDigest.getInstance("MD5");
            do {
                numRead = fis.read(buffer);
                if (numRead > 0) {
                    complete.update(buffer, 0, numRead);
                }
            } while (numRead != -1);
            fis.close();
            byte[] messageDigest = complete.digest();
            StringBuilder hexString = new StringBuilder();
            Intrinsics.checkNotNull(messageDigest);
            for (byte b : messageDigest) {
                String s = Integer.toHexString(b & UByte.MAX_VALUE);
                if (s.length() == 1) {
                    s = "0" + s;
                }
                hexString.append(s);
            }
            String md5str = hexString.toString();
            Intrinsics.checkNotNullExpressionValue(md5str, "toString(...)");
            return true ^ Intrinsics.areEqual(md5str, mainPackMd5);
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    private final void initInputDevices() {
        this.godotInputHandler.initInputDevices();
    }

    private final int createNewGodotInstance(String[] args) {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            return godotHost.onNewGodotInstanceRequested(args);
        }
        return -1;
    }

    private final void nativeBeginBenchmarkMeasure(String scope, String label) {
        BenchmarkUtils.beginBenchmarkMeasure(scope, label);
    }

    private final void nativeEndBenchmarkMeasure(String scope, String label) {
        BenchmarkUtils.endBenchmarkMeasure$default(scope, label, false, 4, null);
    }

    private final void nativeDumpBenchmark(String benchmarkFile) {
        BenchmarkUtils.dumpBenchmark(this.fileAccessHandler, benchmarkFile);
    }

    private final int nativeSignApk(String inputPath, String outputPath, String keystorePath, String keystoreUser, String keystorePassword) {
        GodotHost godotHost = this.primaryHost;
        Error signResult = godotHost != null ? godotHost.signApk(inputPath, outputPath, keystorePath, keystoreUser, keystorePassword) : null;
        if (signResult == null) {
            signResult = Error.ERR_UNAVAILABLE;
        }
        return signResult.toNativeValue();
    }

    private final int nativeVerifyApk(String apkPath) {
        GodotHost godotHost = this.primaryHost;
        Error verifyResult = godotHost != null ? godotHost.verifyApk(apkPath) : null;
        if (verifyResult == null) {
            verifyResult = Error.ERR_UNAVAILABLE;
        }
        return verifyResult.toNativeValue();
    }

    private final void nativeOnEditorWorkspaceSelected(String workspace) {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.onEditorWorkspaceSelected(workspace);
        }
    }
}
