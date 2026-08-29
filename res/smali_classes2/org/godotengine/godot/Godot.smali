.class public final Lorg/godotengine/godot/Godot;
.super Ljava/lang/Object;
.source "Godot.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/Godot$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGodot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Godot.kt\norg/godotengine/godot/Godot\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1199:1\n37#2,2:1200\n37#2,2:1203\n1#3:1202\n*S KotlinDebug\n*F\n+ 1 Godot.kt\norg/godotengine/godot/Godot\n*L\n427#1:1200,2\n1111#1:1203,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0015\n\u0002\u0008!\u0018\u0000 \u00d4\u00012\u00020\u0001:\u0002\u00d4\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\\\u001a\u00020]2\u0008\u0008\u0001\u0010^\u001a\u00020_2\u0008\u0008\u0001\u0010`\u001a\u00020_2\u0008\u0010a\u001a\u0004\u0018\u00010PJ$\u0010\\\u001a\u00020]2\u0006\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020\t2\n\u0008\u0002\u0010a\u001a\u0004\u0018\u00010PH\u0007J\u0008\u0010d\u001a\u00020\u000fH\u0002J\u001b\u0010e\u001a\u00020_2\u000c\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\t0gH\u0003\u00a2\u0006\u0002\u0010hJ\u0014\u0010i\u001a\u00020]2\n\u0008\u0002\u0010j\u001a\u0004\u0018\u00010PH\u0007J\u0018\u0010k\u001a\u00020]2\u0006\u0010l\u001a\u00020\u000f2\u0008\u0008\u0002\u0010m\u001a\u00020\u000fJ\u0010\u0010n\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020_H\u0003J\u0008\u0010p\u001a\u00020_H\u0003J\u0008\u0010q\u001a\u0004\u0018\u00010rJ\u0008\u0010s\u001a\u00020_H\u0003J\u0008\u0010t\u001a\u00020\tH\u0003J\u0006\u0010u\u001a\u00020\tJ\u000e\u0010v\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0013\u0010w\u001a\u0008\u0012\u0004\u0012\u00020\t0gH\u0003\u00a2\u0006\u0002\u0010xJ\u0015\u0010y\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010g\u00a2\u0006\u0002\u0010xJ\n\u0010z\u001a\u0004\u0018\u00010\tH\u0003J\u0006\u0010{\u001a\u00020\u000fJ\u0010\u0010|\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020\tH\u0003J\u0008\u0010~\u001a\u00020]H\u0003J\u0008\u0010\u007f\u001a\u00020\u000fH\u0003J\t\u0010\u0080\u0001\u001a\u00020\u000fH\u0003J\u0007\u0010\u0081\u0001\u001a\u00020\u000fJ\t\u0010\u0082\u0001\u001a\u00020\u000fH\u0007J\u0007\u0010\u0083\u0001\u001a\u00020\u000fJ\t\u0010\u0084\u0001\u001a\u00020\u000fH\u0002J\t\u0010\u0085\u0001\u001a\u00020\u000fH\u0002J\u0007\u0010\u0086\u0001\u001a\u00020\u000fJ\u0015\u0010\u0087\u0001\u001a\u00020\u000f2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0002J\u001b\u0010\u008a\u0001\u001a\u00020]2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0003J\u0012\u0010\u008d\u0001\u001a\u00020]2\u0007\u0010\u008e\u0001\u001a\u00020\tH\u0003J\u0011\u0010\u008f\u0001\u001a\u00020]2\u0006\u0010l\u001a\u00020\u000fH\u0003J\u001b\u0010\u0090\u0001\u001a\u00020]2\u0007\u0010\u008b\u0001\u001a\u00020\t2\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0003J\u0012\u0010\u0091\u0001\u001a\u00020]2\u0007\u0010\u0092\u0001\u001a\u00020\tH\u0003J6\u0010\u0093\u0001\u001a\u00020_2\u0007\u0010\u0094\u0001\u001a\u00020\t2\u0007\u0010\u0095\u0001\u001a\u00020\t2\u0007\u0010\u0096\u0001\u001a\u00020\t2\u0007\u0010\u0097\u0001\u001a\u00020\t2\u0007\u0010\u0098\u0001\u001a\u00020\tH\u0003J\u0012\u0010\u0099\u0001\u001a\u00020_2\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0003J\u001b\u0010\u009b\u0001\u001a\u00020\u000f2\u0007\u0010\u009c\u0001\u001a\u00020\t2\u0007\u0010\u009d\u0001\u001a\u00020\tH\u0002J%\u0010\u009e\u0001\u001a\u00020]2\u0007\u0010\u009f\u0001\u001a\u00020_2\u0007\u0010\u00a0\u0001\u001a\u00020_2\n\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u00a2\u0001J\u0007\u0010\u00a3\u0001\u001a\u00020]J\u0011\u0010\u00a4\u0001\u001a\u00020]2\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001J\u000f\u0010\u00a7\u0001\u001a\u00020]2\u0006\u0010D\u001a\u00020EJ\u000f\u0010\u00a8\u0001\u001a\u00020]2\u0006\u0010D\u001a\u00020EJ\t\u0010\u00a9\u0001\u001a\u00020]H\u0002J\t\u0010\u00aa\u0001\u001a\u00020]H\u0002J\t\u0010\u00ab\u0001\u001a\u00020]H\u0003J\u0010\u0010\u00ac\u0001\u001a\u00020\u000f2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\u001f\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\r2\u0007\u0010\u00ad\u0001\u001a\u00020E2\t\u0008\u0002\u0010\u00af\u0001\u001a\u00020\rH\u0007J\u0010\u0010\u00b0\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ1\u0010\u00b1\u0001\u001a\u00020]2\u0007\u0010\u009f\u0001\u001a\u00020_2\u000f\u0010\u00b2\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0g2\u0008\u0010\u00b3\u0001\u001a\u00030\u00b4\u0001\u00a2\u0006\u0003\u0010\u00b5\u0001J\u0010\u0010\u00b6\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\u0010\u0010\u00b7\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\u0010\u0010\u00b8\u0001\u001a\u00020]2\u0007\u0010\u00ad\u0001\u001a\u00020EJ\t\u0010\u00b9\u0001\u001a\u00020]H\u0002J\u0012\u0010\u00ba\u0001\u001a\u00020\u000f2\t\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\tJ\u0007\u0010\u00bc\u0001\u001a\u00020\u000fJ\t\u0010\u00bd\u0001\u001a\u00020rH\u0002J\t\u0010\u00be\u0001\u001a\u00020]H\u0002J\u0010\u0010\u00bf\u0001\u001a\u00020]2\u0007\u0010\u00c0\u0001\u001a\u00020PJ\u0010\u0010\u00c1\u0001\u001a\u00020]2\u0007\u0010\u00c0\u0001\u001a\u00020PJ\u0012\u0010\u00c2\u0001\u001a\u00020]2\t\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\tJ\u0011\u0010\u00c4\u0001\u001a\u00020]2\u0006\u0010l\u001a\u00020\u000fH\u0002J.\u0010\u00c5\u0001\u001a\u00020]2\u0006\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t2\r\u0010\u00c6\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t0gH\u0003\u00a2\u0006\u0003\u0010\u00c7\u0001J9\u0010\u00c8\u0001\u001a\u00020]2\u0007\u0010\u00c9\u0001\u001a\u00020\t2\u0007\u0010\u00ca\u0001\u001a\u00020\t2\u0007\u0010\u00cb\u0001\u001a\u00020_2\r\u0010\u00cc\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t0gH\u0003\u00a2\u0006\u0003\u0010\u00cd\u0001J\"\u0010\u00ce\u0001\u001a\u00020]2\u0006\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t2\u0007\u0010\u00cf\u0001\u001a\u00020\tH\u0003J\t\u0010\u00d0\u0001\u001a\u00020\u000fH\u0002J\u001b\u0010\u00d1\u0001\u001a\u00020]2\u0007\u0010\u00d2\u0001\u001a\u00020_2\u0007\u0010\u00d3\u0001\u001a\u00020_H\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001d\u0010%\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008\'\u0010(R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010-\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010*\u001a\u0004\u0008.\u0010(R\u001d\u00100\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010*\u001a\u0004\u00081\u0010(R\u001d\u00103\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010*\u001a\u0004\u00084\u0010(R\u000e\u00106\u001a\u000207X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010;\u001a\u00020<\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u001b\u0010?\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010*\u001a\u0004\u0008A\u0010BR\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010F\u001a\u0004\u0018\u00010GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u000e\u0010L\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010N\u001a\u0008\u0012\u0004\u0012\u00020P0OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010Q\u001a\u00020R\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010TR\u000e\u0010U\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020YX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020[X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00d5\u0001"
    }
    d2 = {
        "Lorg/godotengine/godot/Godot;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "accelerometerEnabled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "commandLine",
        "",
        "",
        "commandLineFileParser",
        "Lorg/godotengine/godot/utils/CommandLineFileParser;",
        "containerLayout",
        "Landroid/widget/FrameLayout;",
        "darkMode",
        "",
        "directoryAccessHandler",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;",
        "getDirectoryAccessHandler",
        "()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;",
        "expansionPackPath",
        "fileAccessHandler",
        "Lorg/godotengine/godot/io/file/FileAccessHandler;",
        "getFileAccessHandler",
        "()Lorg/godotengine/godot/io/file/FileAccessHandler;",
        "godotInputHandler",
        "Lorg/godotengine/godot/input/GodotInputHandler;",
        "godotMainLoopStarted",
        "gravityEnabled",
        "gyroscopeEnabled",
        "initializationStarted",
        "io",
        "Lorg/godotengine/godot/GodotIO;",
        "getIo",
        "()Lorg/godotengine/godot/GodotIO;",
        "setIo",
        "(Lorg/godotengine/godot/GodotIO;)V",
        "mAccelerometer",
        "Landroid/hardware/Sensor;",
        "getMAccelerometer",
        "()Landroid/hardware/Sensor;",
        "mAccelerometer$delegate",
        "Lkotlin/Lazy;",
        "mClipboard",
        "Landroid/content/ClipboardManager;",
        "mGravity",
        "getMGravity",
        "mGravity$delegate",
        "mGyroscope",
        "getMGyroscope",
        "mGyroscope$delegate",
        "mMagnetometer",
        "getMMagnetometer",
        "mMagnetometer$delegate",
        "mSensorManager",
        "Landroid/hardware/SensorManager;",
        "magnetometerEnabled",
        "nativeLayerInitializeCompleted",
        "nativeLayerSetupCompleted",
        "netUtils",
        "Lorg/godotengine/godot/utils/GodotNetUtils;",
        "getNetUtils",
        "()Lorg/godotengine/godot/utils/GodotNetUtils;",
        "pluginRegistry",
        "Lorg/godotengine/godot/plugin/GodotPluginRegistry;",
        "getPluginRegistry",
        "()Lorg/godotengine/godot/plugin/GodotPluginRegistry;",
        "pluginRegistry$delegate",
        "primaryHost",
        "Lorg/godotengine/godot/GodotHost;",
        "renderView",
        "Lorg/godotengine/godot/GodotRenderView;",
        "getRenderView",
        "()Lorg/godotengine/godot/GodotRenderView;",
        "setRenderView",
        "(Lorg/godotengine/godot/GodotRenderView;)V",
        "renderViewInitialized",
        "resumed",
        "runOnTerminate",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Ljava/lang/Runnable;",
        "tts",
        "Lorg/godotengine/godot/tts/GodotTTS;",
        "getTts",
        "()Lorg/godotengine/godot/tts/GodotTTS;",
        "useApkExpansion",
        "useDebugOpengl",
        "useImmersive",
        "vibratorService",
        "Landroid/os/Vibrator;",
        "xrMode",
        "Lorg/godotengine/godot/xr/XRMode;",
        "alert",
        "",
        "messageResId",
        "",
        "titleResId",
        "okCallback",
        "message",
        "title",
        "canFallbackToOpenGL",
        "createNewGodotInstance",
        "args",
        "",
        "([Ljava/lang/String;)I",
        "destroyAndKillProcess",
        "destroyRunnable",
        "enableImmersiveMode",
        "enabled",
        "override",
        "forceQuit",
        "instanceId",
        "getAccentColor",
        "getActivity",
        "Landroid/app/Activity;",
        "getBaseColor",
        "getCACertificates",
        "getClipboard",
        "getCommandLine",
        "getGDExtensionConfigFiles",
        "()[Ljava/lang/String;",
        "getGrantedPermissions",
        "getInputFallbackMapping",
        "hasClipboard",
        "hasFeature",
        "feature",
        "initInputDevices",
        "isDarkMode",
        "isDarkModeSupported",
        "isEditorHint",
        "isInImmersiveMode",
        "isInitialized",
        "isNativeInitialized",
        "isOnUiThread",
        "isProjectManagerHint",
        "meetsVulkanRequirements",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "nativeBeginBenchmarkMeasure",
        "scope",
        "label",
        "nativeDumpBenchmark",
        "benchmarkFile",
        "nativeEnableImmersiveMode",
        "nativeEndBenchmarkMeasure",
        "nativeOnEditorWorkspaceSelected",
        "workspace",
        "nativeSignApk",
        "inputPath",
        "outputPath",
        "keystorePath",
        "keystoreUser",
        "keystorePassword",
        "nativeVerifyApk",
        "apkPath",
        "obbIsCorrupted",
        "f",
        "mainPackMd5",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "onDestroy",
        "onGodotMainLoopStarted",
        "onGodotSetupCompleted",
        "onGodotTerminating",
        "onInitNativeLayer",
        "host",
        "onInitRenderView",
        "providedContainerLayout",
        "onPause",
        "onRequestPermissionsResult",
        "permissions",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onStart",
        "onStop",
        "registerSensorsIfNeeded",
        "requestPermission",
        "name",
        "requestPermissions",
        "requireActivity",
        "restart",
        "runOnRenderThread",
        "action",
        "runOnUiThread",
        "setClipboard",
        "text",
        "setKeepScreenOn",
        "showDialog",
        "buttons",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V",
        "showFilePicker",
        "currentDirectory",
        "filename",
        "fileMode",
        "filters",
        "(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V",
        "showInputDialog",
        "existingText",
        "usesVulkan",
        "vibrate",
        "durationMs",
        "amplitude",
        "Companion",
        "lib_templateDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/Godot$Companion;

.field public static final EDITOR_FLAVOR:Ljava/lang/String; = "editor"

.field private static final TAG:Ljava/lang/String;

.field public static final TEMPLATE_FLAVOR:Ljava/lang/String; = "template"


# instance fields
.field private final accelerometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private commandLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commandLineFileParser:Lorg/godotengine/godot/utils/CommandLineFileParser;

.field private containerLayout:Landroid/widget/FrameLayout;

.field private final context:Landroid/content/Context;

.field private darkMode:Z

.field private final directoryAccessHandler:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

.field private expansionPackPath:Ljava/lang/String;

.field private final fileAccessHandler:Lorg/godotengine/godot/io/file/FileAccessHandler;

.field private final godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

.field private final godotMainLoopStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gravityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gyroscopeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private initializationStarted:Z

.field private io:Lorg/godotengine/godot/GodotIO;

.field private final mAccelerometer$delegate:Lkotlin/Lazy;

.field private final mClipboard:Landroid/content/ClipboardManager;

.field private final mGravity$delegate:Lkotlin/Lazy;

.field private final mGyroscope$delegate:Lkotlin/Lazy;

.field private final mMagnetometer$delegate:Lkotlin/Lazy;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final magnetometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nativeLayerInitializeCompleted:Z

.field private nativeLayerSetupCompleted:Z

.field private final netUtils:Lorg/godotengine/godot/utils/GodotNetUtils;

.field private final pluginRegistry$delegate:Lkotlin/Lazy;

.field private primaryHost:Lorg/godotengine/godot/GodotHost;

.field private renderView:Lorg/godotengine/godot/GodotRenderView;

.field private renderViewInitialized:Z

.field private resumed:Z

.field private final runOnTerminate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final tts:Lorg/godotengine/godot/tts/GodotTTS;

.field private useApkExpansion:Z

.field private useDebugOpengl:Z

.field private final useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final vibratorService:Landroid/os/Vibrator;

.field private xrMode:Lorg/godotengine/godot/xr/XRMode;


# direct methods
.method public static synthetic $r8$lambda$-8LKPBD0VLsGWs1QP2JOGsQW8GI(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/godotengine/godot/Godot;->alert$lambda$7$lambda$6(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DzK7fn4MRTROGTB-IzhGqm3HnmU(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->alert$lambda$7(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GsfSxeb705ysxtjfgLP4mwOe0vc(Lorg/godotengine/godot/Godot;ZZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->onGodotSetupCompleted$lambda$4(Lorg/godotengine/godot/Godot;ZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8NceElTFWWff3A0jjEQikmJgJc(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess$lambda$11(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCESriRgiBfXffJyYjEMH0Tfe38()V
    .locals 0

    invoke-static {}, Lorg/godotengine/godot/Godot;->onBackPressed$lambda$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$_rm-N0WW06PCFCNGQJO6jHrYZB4(Lorg/godotengine/godot/Godot;)V
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/Godot;->onInitRenderView$lambda$2(Lorg/godotengine/godot/Godot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pYorHPcKtmJ9kmqSaxEXJZR8p-A(ZLorg/godotengine/godot/Godot;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/Godot;->setKeepScreenOn$lambda$8(ZLorg/godotengine/godot/Godot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qD6aPxXyU6o5HbIB8xi3wtdoYZI(Lorg/godotengine/godot/Godot;)V
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/Godot;->onGodotMainLoopStarted$lambda$5(Lorg/godotengine/godot/Godot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubTn_OQ64cyaqOFm-rxzsNiXKSQ(Lorg/godotengine/godot/Godot;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/Godot;->nativeEnableImmersiveMode$lambda$0(Lorg/godotengine/godot/Godot;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/Godot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/Godot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    .line 96
    const-class v0, Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    .line 108
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->mClipboard:Landroid/content/ClipboardManager;

    .line 110
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->vibratorService:Landroid/os/Vibrator;

    .line 112
    sget-object v0, Lorg/godotengine/godot/Godot$pluginRegistry$2;->INSTANCE:Lorg/godotengine/godot/Godot$pluginRegistry$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->pluginRegistry$delegate:Lkotlin/Lazy;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->accelerometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    new-instance v0, Lorg/godotengine/godot/Godot$mAccelerometer$2;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/Godot$mAccelerometer$2;-><init>(Lorg/godotengine/godot/Godot;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->mAccelerometer$delegate:Lkotlin/Lazy;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->gravityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    new-instance v0, Lorg/godotengine/godot/Godot$mGravity$2;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/Godot$mGravity$2;-><init>(Lorg/godotengine/godot/Godot;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->mGravity$delegate:Lkotlin/Lazy;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->magnetometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    new-instance v0, Lorg/godotengine/godot/Godot$mMagnetometer$2;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/Godot$mMagnetometer$2;-><init>(Lorg/godotengine/godot/Godot;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->mMagnetometer$delegate:Lkotlin/Lazy;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->gyroscopeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Lorg/godotengine/godot/Godot$mGyroscope$2;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/Godot$mGyroscope$2;-><init>(Lorg/godotengine/godot/Godot;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->mGyroscope$delegate:Lkotlin/Lazy;

    .line 136
    new-instance v0, Lorg/godotengine/godot/tts/GodotTTS;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/tts/GodotTTS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->tts:Lorg/godotengine/godot/tts/GodotTTS;

    .line 137
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->directoryAccessHandler:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    .line 138
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessHandler;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->fileAccessHandler:Lorg/godotengine/godot/io/file/FileAccessHandler;

    .line 139
    new-instance v0, Lorg/godotengine/godot/utils/GodotNetUtils;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/utils/GodotNetUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->netUtils:Lorg/godotengine/godot/utils/GodotNetUtils;

    .line 140
    new-instance v0, Lorg/godotengine/godot/utils/CommandLineFileParser;

    invoke-direct {v0}, Lorg/godotengine/godot/utils/CommandLineFileParser;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->commandLineFileParser:Lorg/godotengine/godot/utils/CommandLineFileParser;

    .line 141
    new-instance v0, Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-direct {v0, p1, p0}, Lorg/godotengine/godot/input/GodotInputHandler;-><init>(Landroid/content/Context;Lorg/godotengine/godot/Godot;)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->runOnTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->godotMainLoopStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    .line 183
    sget-object v0, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->xrMode:Lorg/godotengine/godot/xr/XRMode;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/godotengine/godot/Godot;->useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    return-void
.end method

.method public static final synthetic access$getMSensorManager$p(Lorg/godotengine/godot/Godot;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "$this"    # Lorg/godotengine/godot/Godot;

    .line 93
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static synthetic alert$default(Lorg/godotengine/godot/Godot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    .line 783
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final alert$lambda$7(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "$activity"    # Landroid/app/Activity;
    .param p1, "$message"    # Ljava/lang/String;
    .param p2, "$title"    # Ljava/lang/String;
    .param p3, "$okCallback"    # Ljava/lang/Runnable;

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 787
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 788
    nop

    .line 789
    sget v1, Lorg/godotengine/godot/R$string;->dialog_ok:I

    .line 788
    new-instance v2, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 794
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 795
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 796
    return-void
.end method

.method private static final alert$lambda$7$lambda$6(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "$okCallback"    # Ljava/lang/Runnable;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 792
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 793
    return-void
.end method

.method private final canFallbackToOpenGL()Z
    .locals 1

    .line 855
    const-string v0, "rendering/rendering_device/fallback_to_opengl3"

    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final createNewGodotInstance([Ljava/lang/String;)I
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onNewGodotInstanceRequested([Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static synthetic destroyAndKillProcess$default(Lorg/godotengine/godot/Godot;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    .line 967
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final destroyAndKillProcess$lambda$11(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;)V
    .locals 1
    .param p0, "this$0"    # Lorg/godotengine/godot/Godot;
    .param p1, "$host"    # Lorg/godotengine/godot/GodotHost;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/Godot;->onDestroy(Lorg/godotengine/godot/GodotHost;)V

    .line 984
    return-void
.end method

.method public static synthetic enableImmersiveMode$default(Lorg/godotengine/godot/Godot;ZZILjava/lang/Object;)V
    .locals 0

    .line 336
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/Godot;->enableImmersiveMode(ZZ)V

    return-void
.end method

.method private final forceQuit(I)Z
    .locals 3
    .param p1, "instanceId"    # I

    .line 989
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_1

    .local v0, "it":Lorg/godotengine/godot/GodotHost;
    const/4 v1, 0x0

    .line 990
    .local v1, "$i$a$-let-Godot$forceQuit$1":I
    if-nez p1, :cond_0

    .line 991
    invoke-interface {v0, p0}, Lorg/godotengine/godot/GodotHost;->onGodotForceQuit(Lorg/godotengine/godot/Godot;)V

    .line 992
    const/4 v2, 0x1

    return v2

    .line 994
    :cond_0
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotForceQuit(I)Z

    move-result v2

    return v2

    .line 996
    .end local v0    # "it":Lorg/godotengine/godot/GodotHost;
    .end local v1    # "$i$a$-let-Godot$forceQuit$1":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final getAccentColor()I
    .locals 4

    .line 951
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 952
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 953
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method private final getBaseColor()I
    .locals 4

    .line 958
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 959
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 960
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method private final getCACertificates()Ljava/lang/String;
    .locals 2

    .line 1116
    invoke-static {}, Lorg/godotengine/godot/utils/GodotNetUtils;->getCACertificates()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCACertificates(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCommandLine()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1038
    nop

    .line 1039
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->commandLineFileParser:Lorg/godotengine/godot/utils/CommandLineFileParser;

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->requireActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "_cl_"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "open(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/utils/CommandLineFileParser;->parseCommandLine(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "ignored":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .line 1038
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1044
    .local v0, "commandLine":Ljava/util/List;
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/godotengine/godot/GodotHost;->getCommandLine()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1045
    .local v1, "hostCommandLine":Ljava/util/List;
    :goto_1
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_3

    .line 1046
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1049
    :cond_3
    return-object v0
.end method

.method private final getGDExtensionConfigFiles()[Ljava/lang/String;
    .locals 5

    .line 1106
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 1107
    .local v0, "configFiles":Ljava/util/Set;
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 1108
    .local v2, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v2}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginGDExtensionLibrariesPaths()Ljava/util/Set;

    move-result-object v3

    const-string v4, "getPluginGDExtensionLibrariesPaths(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1111
    .end local v2    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 1203
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 1204
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 1111
    return-object v1
.end method

.method private final getInputFallbackMapping()Ljava/lang/String;
    .locals 1

    .line 1058
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->xrMode:Lorg/godotengine/godot/xr/XRMode;

    iget-object v0, v0, Lorg/godotengine/godot/xr/XRMode;->inputFallbackMapping:Ljava/lang/String;

    return-object v0
.end method

.method private final getMAccelerometer()Landroid/hardware/Sensor;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mAccelerometer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    return-object v0
.end method

.method private final getMGravity()Landroid/hardware/Sensor;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mGravity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    return-object v0
.end method

.method private final getMGyroscope()Landroid/hardware/Sensor;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mGyroscope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    return-object v0
.end method

.method private final getMMagnetometer()Landroid/hardware/Sensor;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mMagnetometer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    return-object v0
.end method

.method private final getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->pluginRegistry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    return-object v0
.end method

.method private final hasFeature(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 1089
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->supportsFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1090
    return v2

    .line 1093
    :cond_1
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 1094
    .local v3, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v3, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;->supportsFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1095
    return v2

    .line 1098
    .end local v3    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    :cond_3
    return v1
.end method

.method private final initInputDevices()V
    .locals 1

    .line 1155
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotInputHandler;->initInputDevices()V

    .line 1156
    return-void
.end method

.method private final isDarkMode()Z
    .locals 1

    .line 900
    iget-boolean v0, p0, Lorg/godotengine/godot/Godot;->darkMode:Z

    return v0
.end method

.method private final isDarkModeSupported()Z
    .locals 3

    .line 892
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    xor-int/lit8 v0, v2, 0x1

    return v0
.end method

.method private final isNativeInitialized()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/godotengine/godot/Godot;->nativeLayerInitializeCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/godotengine/godot/Godot;->nativeLayerSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isOnUiThread()Z
    .locals 2

    .line 822
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final meetsVulkanRequirements(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 862
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 863
    return v0

    .line 865
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 866
    const-string v0, "android.hardware.vulkan.level"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v1, "The vulkan hardware level does not meet the minimum requirement: 1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_1
    const-string v0, "android.hardware.vulkan.version"

    const v1, 0x400003

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 874
    :cond_2
    return v0
.end method

.method private final nativeBeginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 1165
    invoke-static {p1, p2}, Lorg/godotengine/godot/utils/BenchmarkUtils;->beginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method private final nativeDumpBenchmark(Ljava/lang/String;)V
    .locals 1
    .param p1, "benchmarkFile"    # Ljava/lang/String;

    .line 1175
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->fileAccessHandler:Lorg/godotengine/godot/io/file/FileAccessHandler;

    invoke-static {v0, p1}, Lorg/godotengine/godot/utils/BenchmarkUtils;->dumpBenchmark(Lorg/godotengine/godot/io/file/FileAccessHandler;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method private final nativeEnableImmersiveMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 372
    new-instance v0, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda0;-><init>(Lorg/godotengine/godot/Godot;Z)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method private static final nativeEnableImmersiveMode$lambda$0(Lorg/godotengine/godot/Godot;Z)V
    .locals 3
    .param p0, "this$0"    # Lorg/godotengine/godot/Godot;
    .param p1, "$enabled"    # Z

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/godotengine/godot/Godot;->enableImmersiveMode$default(Lorg/godotengine/godot/Godot;ZZILjava/lang/Object;)V

    .line 374
    return-void
.end method

.method private final nativeEndBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 1170
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1171
    return-void
.end method

.method private final nativeOnEditorWorkspaceSelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "workspace"    # Ljava/lang/String;

    .line 1196
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onEditorWorkspaceSelected(Ljava/lang/String;)V

    .line 1197
    :cond_0
    return-void
.end method

.method private final nativeSignApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "keystorePath"    # Ljava/lang/String;
    .param p4, "keystoreUser"    # Ljava/lang/String;
    .param p5, "keystorePassword"    # Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/godotengine/godot/GodotHost;->signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    .line 1185
    .local v0, "signResult":Lorg/godotengine/godot/error/Error;
    :cond_1
    invoke-virtual {v0}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    move-result v1

    return v1
.end method

.method private final nativeVerifyApk(Ljava/lang/String;)I
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    .line 1191
    .local v0, "verifyResult":Lorg/godotengine/godot/error/Error;
    :cond_1
    invoke-virtual {v0}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    move-result v1

    return v1
.end method

.method private final obbIsCorrupted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "mainPackMd5"    # Ljava/lang/String;

    .line 1120
    nop

    .line 1121
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/io/InputStream;

    .line 1124
    .local v1, "fis":Ljava/io/InputStream;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 1125
    .local v2, "buffer":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1126
    .local v3, "complete":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 1128
    .local v4, "numRead":I
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    .line 1129
    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 1130
    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1132
    :cond_1
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 1133
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1134
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 1137
    .local v6, "messageDigest":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    .local v7, "hexString":Ljava/lang/StringBuilder;
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v8, v6

    :goto_0
    if-ge v5, v8, :cond_3

    aget-byte v9, v6, v5

    .line 1139
    .local v9, "b":B
    and-int/lit16 v10, v9, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 1140
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v0, :cond_2

    .line 1141
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 1143
    :cond_2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    nop

    .end local v9    # "b":B
    .end local v10    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1145
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "toString(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    .local v5, "md5str":Ljava/lang/String;
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fis":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "complete":Ljava/security/MessageDigest;
    .end local v4    # "numRead":I
    .end local v5    # "md5str":Ljava/lang/String;
    .end local v6    # "messageDigest":[B
    .end local v7    # "hexString":Ljava/lang/StringBuilder;
    xor-int/2addr v0, v8

    goto :goto_1

    .line 1147
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1149
    nop

    .line 1120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private static final onBackPressed$lambda$13()V
    .locals 0

    .line 1003
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->back()V

    return-void
.end method

.method private final onGodotMainLoopStarted()V
    .locals 2

    .line 740
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v1, "OnGodotMainLoopStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->godotMainLoopStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 743
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->accelerometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "input_devices/sensors/enable_accelerometer"

    invoke-static {v1}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 744
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->gravityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "input_devices/sensors/enable_gravity"

    invoke-static {v1}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 745
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->gyroscopeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "input_devices/sensors/enable_gyroscope"

    invoke-static {v1}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 746
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->magnetometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "input_devices/sensors/enable_magnetometer"

    invoke-static {v1}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 748
    new-instance v0, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda5;-><init>(Lorg/godotengine/godot/Godot;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 753
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 754
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGodotMainLoopStarted()V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->onGodotMainLoopStarted()V

    .line 757
    :cond_1
    return-void
.end method

.method private static final onGodotMainLoopStarted$lambda$5(Lorg/godotengine/godot/Godot;)V
    .locals 2
    .param p0, "this$0"    # Lorg/godotengine/godot/Godot;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->registerSensorsIfNeeded()V

    .line 750
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/godotengine/godot/Godot;->enableImmersiveMode(ZZ)V

    .line 751
    return-void
.end method

.method private final onGodotSetupCompleted()V
    .locals 5

    .line 711
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v1, "OnGodotSetupCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v0, "input_devices/pointing/android/enable_long_press_as_right_click"

    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 715
    .local v0, "longPressEnabled":Z
    const-string v1, "input_devices/pointing/android/enable_pan_and_scale_gestures"

    invoke-static {v1}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 716
    .local v1, "panScaleEnabled":Z
    const-string v2, "input_devices/pointing/android/rotary_input_scroll_axis"

    invoke-static {v2}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "rotaryInputAxisValue":Ljava/lang/String;
    new-instance v3, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda1;-><init>(Lorg/godotengine/godot/Godot;ZZLjava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 730
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 731
    .local v4, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v4}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGodotSetupCompleted()V

    .end local v4    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 733
    :cond_0
    iget-object v3, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/godotengine/godot/GodotHost;->onGodotSetupCompleted()V

    .line 734
    :cond_1
    return-void
.end method

.method private static final onGodotSetupCompleted$lambda$4(Lorg/godotengine/godot/Godot;ZZLjava/lang/String;)V
    .locals 5
    .param p0, "this$0"    # Lorg/godotengine/godot/Godot;
    .param p1, "$longPressEnabled"    # Z
    .param p2, "$panScaleEnabled"    # Z
    .param p3, "$rotaryInputAxisValue"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243":Lorg/godotengine/godot/input/GodotInputHandler;
    const/4 v1, 0x0

    .line 720
    .local v1, "$i$a$-apply-Godot$onGodotSetupCompleted$1$1":I
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->enableLongPress(Z)V

    .line 721
    invoke-virtual {v0, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->enablePanningAndScalingGestures(Z)V

    .line 722
    nop

    .line 723
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->setRotaryInputAxis(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    nop

    .line 719
    .end local v0    # "$this$onGodotSetupCompleted_u24lambda_u244_u24lambda_u243":Lorg/godotengine/godot/input/GodotInputHandler;
    .end local v1    # "$i$a$-apply-Godot$onGodotSetupCompleted$1$1":I
    :cond_0
    nop

    .line 728
    return-void
.end method

.method private final onGodotTerminating()V
    .locals 2

    .line 764
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v1, "OnGodotTerminating"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->runOnTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 766
    :cond_0
    return-void
.end method

.method public static synthetic onInitRenderView$default(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;ILjava/lang/Object;)Landroid/widget/FrameLayout;
    .locals 0

    .line 454
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lorg/godotengine/godot/GodotHost;->getActivity()Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/Godot;->onInitRenderView(Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method private static final onInitRenderView$lambda$2(Lorg/godotengine/godot/Godot;)V
    .locals 2
    .param p0, "this$0"    # Lorg/godotengine/godot/Godot;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 555
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onRegisterPluginWithGodotNative()V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 557
    :cond_0
    const-string v0, "display/window/energy_saving/keep_screen_on"

    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/Godot;->setKeepScreenOn(Z)V

    .line 558
    return-void
.end method

.method private final registerSensorsIfNeeded()V
    .locals 4

    .line 609
    iget-boolean v0, p0, Lorg/godotengine/godot/Godot;->resumed:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/godotengine/godot/Godot;->godotMainLoopStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->accelerometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMAccelerometer()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    check-cast v2, Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMAccelerometer()Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->gravityEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMGravity()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    check-cast v2, Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMGravity()Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 619
    :cond_2
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->magnetometerEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMMagnetometer()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    check-cast v2, Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMMagnetometer()Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 622
    :cond_3
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->gyroscopeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMGyroscope()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    check-cast v2, Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getMGyroscope()Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 625
    :cond_4
    return-void

    .line 610
    :cond_5
    :goto_0
    return-void
.end method

.method private final requireActivity()Landroid/app/Activity;
    .locals 2

    .line 207
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Host activity must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final restart()V
    .locals 1

    .line 769
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/godotengine/godot/GodotHost;->onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V

    .line 770
    :cond_0
    return-void
.end method

.method private final setKeepScreenOn(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 878
    new-instance v0, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda2;-><init>(ZLorg/godotengine/godot/Godot;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 885
    return-void
.end method

.method private static final setKeepScreenOn$lambda$8(ZLorg/godotengine/godot/Godot;)V
    .locals 2
    .param p0, "$enabled"    # Z
    .param p1, "this$0"    # Lorg/godotengine/godot/Godot;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    const/16 v0, 0x80

    if-eqz p0, :cond_0

    .line 880
    invoke-virtual {p1}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 884
    :cond_1
    :goto_0
    return-void
.end method

.method private final showDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttons"    # [Ljava/lang/String;

    .line 934
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    .local v0, "it":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 934
    .local v1, "$i$a$-let-Godot$showDialog$1":I
    sget-object v2, Lorg/godotengine/godot/utils/DialogUtils;->Companion:Lorg/godotengine/godot/utils/DialogUtils$Companion;

    invoke-virtual {v2, v0, p1, p2, p3}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->showDialog$lib_templateDebug(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 935
    .end local v0    # "it":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-Godot$showDialog$1":I
    :cond_0
    return-void
.end method

.method private final showFilePicker(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 9
    .param p1, "currentDirectory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileMode"    # I
    .param p4, "filters"    # [Ljava/lang/String;

    .line 920
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 921
    sget-object v2, Lorg/godotengine/godot/io/FilePicker;->Companion:Lorg/godotengine/godot/io/FilePicker$Companion;

    iget-object v3, p0, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/godotengine/godot/io/FilePicker$Companion;->showFilePicker(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 923
    :cond_0
    return-void
.end method

.method private final showInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "existingText"    # Ljava/lang/String;

    .line 946
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    .local v0, "it":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 946
    .local v1, "$i$a$-let-Godot$showInputDialog$1":I
    sget-object v2, Lorg/godotengine/godot/utils/DialogUtils;->Companion:Lorg/godotengine/godot/utils/DialogUtils$Companion;

    invoke-virtual {v2, v0, p1, p2, p3}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->showInputDialog$lib_templateDebug(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .end local v0    # "it":Landroid/app/Activity;
    .end local v1    # "$i$a$-let-Godot$showInputDialog$1":I
    :cond_0
    return-void
.end method

.method private final usesVulkan()Z
    .locals 12

    .line 828
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->getRendererInfo()[Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "rendererInfo":[Ljava/lang/String;
    const-string v1, "ProjectSettings"

    .line 830
    .local v1, "renderingDeviceSource":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .line 831
    .local v3, "renderingDevice":Ljava/lang/String;
    const-string v4, "ProjectSettings"

    .line 832
    .local v4, "rendererSource":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v6, v0, v5

    .line 833
    .local v6, "renderer":Ljava/lang/String;
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getCommandLine()Ljava/util/List;

    move-result-object v7

    .line 834
    .local v7, "cmdline":Ljava/util/List;
    const-string v8, "--rendering-method"

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 835
    .local v8, "index":I
    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v11, v8, 0x1

    if-le v10, v11, :cond_0

    .line 836
    const-string v4, "CommandLine"

    .line 837
    add-int/lit8 v10, v8, 0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    check-cast v6, Ljava/lang/String;

    .line 839
    :cond_0
    const-string v10, "--rendering-driver"

    invoke-interface {v7, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 840
    if-le v8, v9, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    if-le v9, v10, :cond_1

    .line 841
    const-string v1, "CommandLine"

    .line 842
    add-int/lit8 v9, v8, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Ljava/lang/String;

    .line 844
    :cond_1
    const-string v9, "forward_plus"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "mobile"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "vulkan"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    .line 845
    .local v2, "result":Z
    :cond_3
    sget-object v5, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    .line 846
    nop

    .line 847
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usesVulkan(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\t\t\trenderingDevice: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")\n\t\t\trenderer: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 845
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return v2
.end method

.method private final vibrate(II)V
    .locals 4
    .param p1, "durationMs"    # I
    .param p2, "amplitude"    # I

    .line 1013
    if-lez p1, :cond_2

    const-string v0, "VIBRATE"

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/Godot;->requestPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1015
    const/4 v0, -0x1

    if-gt p2, v0, :cond_0

    .line 1016
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->vibratorService:Landroid/os/Vibrator;

    .line 1018
    int-to-long v2, p1

    .line 1019
    nop

    .line 1017
    invoke-static {v2, v3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 1016
    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->vibratorService:Landroid/os/Vibrator;

    .line 1025
    int-to-long v1, p1

    .line 1026
    nop

    .line 1024
    invoke-static {v1, v2, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 1023
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 1032
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->vibratorService:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1035
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final alert(IILjava/lang/Runnable;)V
    .locals 4
    .param p1, "messageResId"    # I
    .param p2, "titleResId"    # I
    .param p3, "okCallback"    # Ljava/lang/Runnable;

    .line 777
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 778
    .local v0, "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, p3}, Lorg/godotengine/godot/Godot;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public final alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/godotengine/godot/Godot;->alert$default(Lorg/godotengine/godot/Godot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "okCallback"    # Ljava/lang/Runnable;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 785
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    new-instance v1, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method

.method public final destroyAndKillProcess()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess$default(Lorg/godotengine/godot/Godot;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final destroyAndKillProcess(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "destroyRunnable"    # Ljava/lang/Runnable;

    .line 968
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    .line 969
    .local v0, "host":Lorg/godotengine/godot/GodotHost;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->getActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 970
    .local v1, "activity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 980
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/Godot;->runOnTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 982
    new-instance v2, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda8;-><init>(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;)V

    invoke-virtual {p0, v2}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 985
    return-void

    .line 972
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 975
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/godotengine/godot/Godot;->forceQuit(I)Z

    .line 976
    return-void
.end method

.method public final enableImmersiveMode(ZZ)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "override"    # Z

    .line 337
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 338
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 340
    .local v1, "window":Landroid/view/Window;
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/Godot;->useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    .line 341
    return-void

    .line 344
    :cond_2
    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 345
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 346
    .local v2, "controller":Landroidx/core/view/WindowInsetsControllerCompat;
    if-eqz p1, :cond_3

    .line 347
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 348
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_2

    .line 350
    :cond_3
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 351
    .local v3, "fullScreenThemeValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101020d

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_5

    .line 352
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 355
    :cond_5
    sget-object v4, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    invoke-virtual {v4}, Lorg/godotengine/godot/Godot$Companion;->isEditorBuild()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    .line 351
    :goto_0
    move v4, v6

    .line 358
    .local v4, "hasStatusBar":Z
    if-eqz v4, :cond_7

    .line 359
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v5

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v6

    or-int/2addr v5, v6

    goto :goto_1

    .line 361
    :cond_7
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v5

    .line 358
    :goto_1
    nop

    .line 363
    .local v5, "types":I
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    .line 365
    .end local v3    # "fullScreenThemeValue":Landroid/util/TypedValue;
    .end local v4    # "hasStatusBar":Z
    .end local v5    # "types":I
    :goto_2
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getClipboard()Ljava/lang/String;
    .locals 3

    .line 908
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 909
    .local v0, "clipData":Landroid/content/ClipData;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object v1, v2

    .line 910
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->directoryAccessHandler:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    return-object v0
.end method

.method public final getFileAccessHandler()Lorg/godotengine/godot/io/file/FileAccessHandler;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->fileAccessHandler:Lorg/godotengine/godot/io/file/FileAccessHandler;

    return-object v0
.end method

.method public final getGrantedPermissions()[Ljava/lang/String;
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->getGrantedPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIo()Lorg/godotengine/godot/GodotIO;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->io:Lorg/godotengine/godot/GodotIO;

    return-object v0
.end method

.method public final getNetUtils()Lorg/godotengine/godot/utils/GodotNetUtils;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->netUtils:Lorg/godotengine/godot/utils/GodotNetUtils;

    return-object v0
.end method

.method public final getRenderView()Lorg/godotengine/godot/GodotRenderView;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    return-object v0
.end method

.method public final getTts()Lorg/godotengine/godot/tts/GodotTTS;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->tts:Lorg/godotengine/godot/tts/GodotTTS;

    return-object v0
.end method

.method public final hasClipboard()Z
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method public final isEditorHint()Z
    .locals 1

    .line 1077
    sget-object v0, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot$Companion;->isEditorBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/godotengine/godot/GodotLib;->isEditorHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInImmersiveMode()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lorg/godotengine/godot/Godot;->initializationStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/godotengine/godot/Godot;->renderViewInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isProjectManagerHint()Z
    .locals 1

    .line 1082
    sget-object v0, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot$Companion;->isEditorBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/godotengine/godot/GodotLib;->isProjectManagerHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 680
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 681
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainActivityResult(IILandroid/content/Intent;)V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 683
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 684
    sget-object v0, Lorg/godotengine/godot/io/FilePicker;->Companion:Lorg/godotengine/godot/io/FilePicker$Companion;

    iget-object v1, p0, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/godotengine/godot/io/FilePicker$Companion;->handleActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 686
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1000
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 1001
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainBackPressed()Z

    goto :goto_0

    .line 1003
    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Lorg/godotengine/godot/GodotRenderView;->queueOnRenderThread(Ljava/lang/Runnable;)V

    .line 1004
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 669
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 670
    .local v0, "newDarkMode":Z
    :goto_0
    iget-boolean v1, p0, Lorg/godotengine/godot/Godot;->darkMode:Z

    if-eq v1, v0, :cond_2

    .line 671
    iput-boolean v0, p0, Lorg/godotengine/godot/Godot;->darkMode:Z

    .line 672
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onNightModeChanged()V

    .line 674
    :cond_2
    return-void
.end method

.method public final onCreate(Lorg/godotengine/godot/GodotHost;)V
    .locals 16
    .param p1, "primaryHost"    # Lorg/godotengine/godot/GodotHost;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "primaryHost"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, v1, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    if-nez v0, :cond_15

    iget-boolean v0, v1, Lorg/godotengine/godot/Godot;->initializationStarted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 224
    :cond_0
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnCreate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v3, v1, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Lorg/godotengine/godot/Godot;->darkMode:Z

    .line 228
    const-string v3, "Startup"

    const-string v6, "Godot::onCreate"

    invoke-static {v3, v6}, Lorg/godotengine/godot/utils/BenchmarkUtils;->beginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    nop

    .line 230
    :try_start_0
    iput-object v2, v1, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    .line 231
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->requireActivity()Landroid/app/Activity;

    move-result-object v9

    .line 232
    .local v9, "activity":Landroid/app/Activity;
    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 233
    .local v10, "window":Landroid/view/Window;
    const/high16 v11, 0x200000

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 235
    const-string v11, "Initializing Godot plugin registry"

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-array v0, v5, [Lorg/godotengine/godot/plugin/GodotPlugin;

    new-instance v11, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;

    invoke-direct {v11, v1}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;-><init>(Lorg/godotengine/godot/Godot;)V

    aput-object v11, v0, v4

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object v11, v0

    .line 237
    .local v11, "runtimePlugins":Ljava/util/Set;
    invoke-interface {v2, v1}, Lorg/godotengine/godot/GodotHost;->getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;

    move-result-object v0

    const-string v12, "getHostPlugins(...)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-static {v1, v11}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->initializePluginRegistry(Lorg/godotengine/godot/Godot;Ljava/util/Set;)Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 239
    iget-object v0, v1, Lorg/godotengine/godot/Godot;->io:Lorg/godotengine/godot/GodotIO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 240
    :try_start_1
    new-instance v0, Lorg/godotengine/godot/GodotIO;

    invoke-direct {v0, v9}, Lorg/godotengine/godot/GodotIO;-><init>(Landroid/app/Activity;)V

    iput-object v0, v1, Lorg/godotengine/godot/Godot;->io:Lorg/godotengine/godot/GodotIO;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->getCommandLine()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "mainPackMd5":Ljava/lang/String;
    const/4 v12, 0x0

    .line 247
    .local v12, "mainPackKey":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/List;

    .line 248
    .local v13, "newArgs":Ljava/util/List;
    const/4 v14, 0x0

    move v15, v14

    move-object v14, v12

    move-object v12, v0

    .line 249
    .end local v0    # "mainPackMd5":Ljava/lang/String;
    .local v12, "mainPackMd5":Ljava/lang/String;
    .local v14, "mainPackKey":Ljava/lang/String;
    .local v15, "i":I
    :goto_1
    iget-object v0, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_f

    .line 250
    iget-object v0, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    if-ge v15, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 251
    .local v0, "hasExtra":Z
    :goto_2
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    iget-object v8, v8, Lorg/godotengine/godot/xr/XRMode;->cmdLineArg:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    .line 252
    :try_start_3
    sget-object v7, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    iput-object v7, v1, Lorg/godotengine/godot/Godot;->xrMode:Lorg/godotengine/godot/xr/XRMode;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    .line 253
    :cond_4
    :try_start_4
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    iget-object v8, v8, Lorg/godotengine/godot/xr/XRMode;->cmdLineArg:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_5

    .line 254
    :try_start_5
    sget-object v7, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    iput-object v7, v1, Lorg/godotengine/godot/Godot;->xrMode:Lorg/godotengine/godot/xr/XRMode;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_4

    .line 255
    :cond_5
    :try_start_6
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "--debug_opengl"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_6

    .line 256
    :try_start_7
    iput-boolean v5, v1, Lorg/godotengine/godot/Godot;->useDebugOpengl:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 257
    :cond_6
    :try_start_8
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "--fullscreen"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_7

    .line 258
    :try_start_9
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 260
    :cond_7
    :try_start_a
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "--use_apk_expansion"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_8

    .line 261
    :try_start_b
    iput-boolean v5, v1, Lorg/godotengine/godot/Godot;->useApkExpansion:Z

    goto/16 :goto_4

    .line 262
    :cond_8
    if-eqz v0, :cond_9

    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "--apk_expansion_md5"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 263
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    add-int/lit8 v8, v15, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 264
    .end local v12    # "mainPackMd5":Ljava/lang/String;
    .local v7, "mainPackMd5":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object v12, v7

    goto/16 :goto_4

    .line 265
    .end local v7    # "mainPackMd5":Ljava/lang/String;
    .restart local v12    # "mainPackMd5":Ljava/lang/String;
    :cond_9
    if-eqz v0, :cond_a

    :try_start_c
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "--apk_expansion_key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 266
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    add-int/lit8 v8, v15, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 267
    .end local v14    # "mainPackKey":Ljava/lang/String;
    .local v7, "mainPackKey":Ljava/lang/String;
    nop

    .line 268
    const-string v8, "app_data_keys"

    .line 269
    nop

    .line 267
    invoke-virtual {v9, v8, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 271
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 272
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "store_public_key"

    invoke-interface {v14, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    nop

    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v15, v15, 0x1

    move-object v14, v7

    goto/16 :goto_4

    .line 275
    .end local v7    # "mainPackKey":Ljava/lang/String;
    .local v14, "mainPackKey":Ljava/lang/String;
    :cond_a
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "--benchmark"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 276
    invoke-static {v5}, Lorg/godotengine/godot/utils/BenchmarkUtils;->setUseBenchmark(Z)V

    .line 277
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 278
    :cond_b
    if-eqz v0, :cond_c

    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "--benchmark-file"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 279
    invoke-static {v5}, Lorg/godotengine/godot/utils/BenchmarkUtils;->setUseBenchmark(Z)V

    .line 280
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    add-int/lit8 v7, v15, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/godotengine/godot/utils/BenchmarkUtils;->setBenchmarkFile(Ljava/lang/String;)V

    .line 284
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    add-int/lit8 v7, v15, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 287
    :cond_c
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_e

    .line 288
    iget-object v4, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_e
    :goto_4
    nop

    .end local v0    # "hasExtra":Z
    add-int/2addr v15, v5

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 292
    :cond_f
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    goto :goto_5

    :cond_10
    move-object v0, v13

    :goto_5
    iput-object v0, v1, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    .line 293
    iget-boolean v0, v1, Lorg/godotengine/godot/Godot;->useApkExpansion:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_14

    if-eqz v12, :cond_14

    if-eqz v14, :cond_14

    .line 295
    nop

    .line 296
    :try_start_d
    iget-object v0, v1, Lorg/godotengine/godot/Godot;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getSaveFilePath(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;

    .line 297
    nop

    .line 300
    nop

    .line 297
    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 298
    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 299
    nop

    .line 297
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 300
    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/main."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".obb"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    iput-object v0, v1, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v4, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v7, "Unable to build full path to the app\'s expansion files"

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v4, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 305
    .local v4, "f":Ljava/io/File;
    const/4 v0, 0x1

    .line 306
    .local v0, "packValid":Z
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_11

    .line 307
    const/4 v0, 0x0

    goto :goto_8

    .line 308
    :cond_11
    iget-object v7, v1, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;

    invoke-direct {v1, v7, v12}, Lorg/godotengine/godot/Godot;->obbIsCorrupted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v7, :cond_12

    .line 309
    const/4 v7, 0x0

    .line 310
    .end local v0    # "packValid":Z
    .local v7, "packValid":Z
    nop

    .line 311
    :try_start_f
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7

    .line 312
    :catch_1
    move-exception v0

    .line 315
    :goto_7
    move v0, v7

    .end local v7    # "packValid":Z
    .restart local v0    # "packValid":Z
    :cond_12
    :goto_8
    if-eqz v0, :cond_13

    goto :goto_9

    .line 317
    :cond_13
    :try_start_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid expansion pack"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "primaryHost":Lorg/godotengine/godot/GodotHost;
    throw v5

    .line 321
    .end local v0    # "packValid":Z
    .end local v4    # "f":Ljava/io/File;
    .restart local p1    # "primaryHost":Lorg/godotengine/godot/GodotHost;
    :cond_14
    :goto_9
    iput-boolean v5, v1, Lorg/godotengine/godot/Godot;->initializationStarted:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 328
    .end local v9    # "activity":Landroid/app/Activity;
    .end local v10    # "window":Landroid/view/Window;
    .end local v11    # "runtimePlugins":Ljava/util/Set;
    .end local v12    # "mainPackMd5":Ljava/lang/String;
    .end local v13    # "newArgs":Ljava/util/List;
    .end local v14    # "mainPackKey":Ljava/lang/String;
    .end local v15    # "i":I
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v4, v5}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_a

    .line 322
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_11
    iput-object v4, v1, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 325
    const/4 v4, 0x0

    :try_start_12
    iput-boolean v4, v1, Lorg/godotengine/godot/Godot;->initializationStarted:Z

    .line 326
    nop

    .end local p1    # "primaryHost":Lorg/godotengine/godot/GodotHost;
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "primaryHost":Lorg/godotengine/godot/GodotHost;
    :catchall_1
    move-exception v0

    :goto_a
    const/4 v5, 0x4

    const/4 v7, 0x0

    invoke-static {v3, v6, v4, v5, v7}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    throw v0

    .line 220
    :cond_15
    :goto_b
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v3, "OnCreate already invoked"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public final onDestroy(Lorg/godotengine/godot/GodotHost;)V
    .locals 3
    .param p1, "primaryHost"    # Lorg/godotengine/godot/GodotHost;

    const-string v0, "primaryHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 657
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainDestroy()V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->onActivityDestroyed()V

    .line 661
    :cond_2
    return-void
.end method

.method public final onInitNativeLayer(Lorg/godotengine/godot/GodotHost;)Z
    .locals 16
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v0, "host"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-boolean v0, v9, Lorg/godotengine/godot/Godot;->initializationStarted:Z

    if-eqz v0, :cond_7

    .line 394
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->isNativeInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v2, "OnInitNativeLayer already invoked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v1

    .line 398
    :cond_0
    iget-object v0, v9, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    .line 399
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    const-string v1, "Native initialization is only supported for the primary host"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v11

    .line 403
    :cond_1
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnInitNativeLayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v12, "Startup"

    const-string v13, "Godot::onInitNativeLayer"

    invoke-static {v12, v13}, Lorg/godotengine/godot/utils/BenchmarkUtils;->beginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    nop

    .line 407
    const/4 v14, 0x0

    const/4 v15, 0x4

    :try_start_0
    iget-object v2, v9, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 408
    iget-object v1, v9, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    const-string v2, "--main-pack"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, v9, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    iget-object v2, v9, Lorg/godotengine/godot/Godot;->expansionPackPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->requireActivity()Landroid/app/Activity;

    move-result-object v1

    .line 412
    .local v1, "activity":Landroid/app/Activity;
    iget-boolean v2, v9, Lorg/godotengine/godot/Godot;->nativeLayerInitializeCompleted:Z

    if-nez v2, :cond_4

    .line 413
    nop

    .line 414
    nop

    .line 415
    nop

    .line 416
    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 417
    iget-object v4, v9, Lorg/godotengine/godot/Godot;->io:Lorg/godotengine/godot/GodotIO;

    .line 418
    iget-object v5, v9, Lorg/godotengine/godot/Godot;->netUtils:Lorg/godotengine/godot/utils/GodotNetUtils;

    .line 419
    iget-object v6, v9, Lorg/godotengine/godot/Godot;->directoryAccessHandler:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    .line 420
    iget-object v7, v9, Lorg/godotengine/godot/Godot;->fileAccessHandler:Lorg/godotengine/godot/io/file/FileAccessHandler;

    .line 421
    iget-boolean v8, v9, Lorg/godotengine/godot/Godot;->useApkExpansion:Z

    .line 413
    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lorg/godotengine/godot/GodotLib;->initialize(Landroid/app/Activity;Lorg/godotengine/godot/Godot;Landroid/content/res/AssetManager;Lorg/godotengine/godot/GodotIO;Lorg/godotengine/godot/utils/GodotNetUtils;Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;Lorg/godotengine/godot/io/file/FileAccessHandler;Z)Z

    move-result v2

    iput-boolean v2, v9, Lorg/godotengine/godot/Godot;->nativeLayerInitializeCompleted:Z

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Godot native layer initialization completed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_4
    iget-boolean v2, v9, Lorg/godotengine/godot/Godot;->nativeLayerInitializeCompleted:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v9, Lorg/godotengine/godot/Godot;->nativeLayerSetupCompleted:Z

    if-nez v2, :cond_6

    .line 427
    iget-object v2, v9, Lorg/godotengine/godot/Godot;->commandLine:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 1200
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    .line 1201
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v11, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v5, [Ljava/lang/String;

    .line 427
    iget-object v2, v9, Lorg/godotengine/godot/Godot;->tts:Lorg/godotengine/godot/tts/GodotTTS;

    invoke-static {v5, v2}, Lorg/godotengine/godot/GodotLib;->setup([Ljava/lang/String;Lorg/godotengine/godot/tts/GodotTTS;)Z

    move-result v2

    iput-boolean v2, v9, Lorg/godotengine/godot/Godot;->nativeLayerSetupCompleted:Z

    .line 428
    if-eqz v2, :cond_5

    .line 431
    const-string v2, "Godot native layer setup completed"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 429
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to setup the Godot engine! Aborting..."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "host":Lorg/godotengine/godot/GodotHost;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v1    # "activity":Landroid/app/Activity;
    .restart local p1    # "host":Lorg/godotengine/godot/GodotHost;
    :cond_6
    :goto_1
    invoke-static {v12, v13, v11, v15, v14}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 436
    nop

    .line 437
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->isNativeInitialized()Z

    move-result v0

    return v0

    .line 435
    :catchall_0
    move-exception v0

    invoke-static {v12, v13, v11, v15, v14}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    throw v0

    .line 392
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnCreate must be invoked successfully prior to initializing the native layer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onInitRenderView(Lorg/godotengine/godot/GodotHost;)Landroid/widget/FrameLayout;
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lorg/godotengine/godot/Godot;->onInitRenderView$default(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;ILjava/lang/Object;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public final onInitRenderView(Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 18
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;
    .param p2, "providedContainerLayout"    # Landroid/widget/FrameLayout;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "host"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providedContainerLayout"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 459
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnInitRenderView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v10, "Startup"

    const-string v11, "Godot::onInitRenderView"

    invoke-static {v10, v11}, Lorg/godotengine/godot/utils/BenchmarkUtils;->beginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    nop

    .line 463
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/godotengine/godot/GodotHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .local v0, "activity":Landroid/app/Activity;
    iput-object v9, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    .line 465
    if-eqz v9, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 466
    :cond_0
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    const/4 v15, -0x1

    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 467
    nop

    .line 468
    nop

    .line 466
    invoke-direct {v2, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 472
    :goto_1
    new-instance v1, Lorg/godotengine/godot/input/GodotEditText;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/godotengine/godot/input/GodotEditText;-><init>(Landroid/content/Context;)V

    move-object v6, v1

    .line 473
    .local v6, "editText":Lorg/godotengine/godot/input/GodotEditText;
    nop

    .line 474
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 475
    nop

    .line 476
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/godotengine/godot/R$dimen;->text_edit_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 474
    invoke-direct {v1, v15, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 473
    invoke-virtual {v6, v1}, Lorg/godotengine/godot/input/GodotEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual {v6, v14}, Lorg/godotengine/godot/input/GodotEditText;->setBackgroundColor(I)V

    .line 481
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    move-object v2, v6

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 482
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->usesVulkan()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 483
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/godotengine/godot/Godot;->meetsVulkanRequirements(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    new-instance v1, Lorg/godotengine/godot/GodotVulkanRenderView;

    iget-object v2, v7, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-direct {v1, v8, v7, v2}, Lorg/godotengine/godot/GodotVulkanRenderView;-><init>(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/input/GodotInputHandler;)V

    move-object v12, v6

    goto :goto_2

    .line 485
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->canFallbackToOpenGL()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 487
    new-instance v16, Lorg/godotengine/godot/GodotGLRenderView;

    iget-object v4, v7, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    iget-object v5, v7, Lorg/godotengine/godot/Godot;->xrMode:Lorg/godotengine/godot/xr/XRMode;

    iget-boolean v3, v7, Lorg/godotengine/godot/Godot;->useDebugOpengl:Z

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p0

    move-object v12, v6

    .end local v6    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    .local v12, "editText":Lorg/godotengine/godot/input/GodotEditText;
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lorg/godotengine/godot/GodotGLRenderView;-><init>(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/input/GodotInputHandler;Lorg/godotengine/godot/xr/XRMode;Z)V

    move-object/from16 v1, v16

    .line 489
    :goto_2
    check-cast v1, Lorg/godotengine/godot/GodotRenderView;

    goto :goto_3

    .end local v12    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    .restart local v6    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    :cond_4
    move-object v12, v6

    .end local v6    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    .restart local v12    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    new-instance v1, Ljava/lang/IllegalStateException;

    sget v2, Lorg/godotengine/godot/R$string;->error_missing_vulkan_requirements_message:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "host":Lorg/godotengine/godot/GodotHost;
    .end local p2    # "providedContainerLayout":Landroid/widget/FrameLayout;
    throw v1

    .line 494
    .end local v12    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    .restart local v6    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    .restart local p1    # "host":Lorg/godotengine/godot/GodotHost;
    .restart local p2    # "providedContainerLayout":Landroid/widget/FrameLayout;
    :cond_5
    move-object v12, v6

    .end local v6    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    .restart local v12    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    new-instance v16, Lorg/godotengine/godot/GodotGLRenderView;

    iget-object v4, v7, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    iget-object v5, v7, Lorg/godotengine/godot/Godot;->xrMode:Lorg/godotengine/godot/xr/XRMode;

    iget-boolean v6, v7, Lorg/godotengine/godot/Godot;->useDebugOpengl:Z

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/godotengine/godot/GodotGLRenderView;-><init>(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/input/GodotInputHandler;Lorg/godotengine/godot/xr/XRMode;Z)V

    move-object/from16 v1, v16

    check-cast v1, Lorg/godotengine/godot/GodotRenderView;

    .line 482
    :goto_3
    iput-object v1, v7, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    .line 497
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 498
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/godotengine/godot/GodotRenderView;->startRenderer()V

    .line 501
    :cond_6
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v1, :cond_7

    .local v1, "it":Lorg/godotengine/godot/GodotRenderView;
    const/4 v2, 0x0

    .line 502
    .local v2, "$i$a$-let-Godot$onInitRenderView$1":I
    iget-object v3, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    .line 503
    invoke-interface {v1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 504
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 505
    nop

    .line 506
    nop

    .line 504
    invoke-direct {v5, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 502
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .end local v1    # "it":Lorg/godotengine/godot/GodotRenderView;
    .end local v2    # "$i$a$-let-Godot$onInitRenderView$1":I
    :cond_7
    nop

    .line 511
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-virtual {v12, v1}, Lorg/godotengine/godot/input/GodotEditText;->setView(Lorg/godotengine/godot/GodotRenderView;)V

    .line 512
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->io:Lorg/godotengine/godot/GodotIO;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v12}, Lorg/godotengine/godot/GodotIO;->setEdit(Lorg/godotengine/godot/input/GodotEditText;)V

    .line 515
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    .local v1, "decorView":Landroid/view/View;
    new-instance v2, Lorg/godotengine/godot/Godot$onInitRenderView$2;

    invoke-direct {v2, v1}, Lorg/godotengine/godot/Godot$onInitRenderView$2;-><init>(Landroid/view/View;)V

    check-cast v2, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 552
    iget-object v2, v7, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 553
    iget-object v2, v7, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v2, :cond_9

    new-instance v3, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda3;

    invoke-direct {v3, v7}, Lorg/godotengine/godot/Godot$$ExternalSyntheticLambda3;-><init>(Lorg/godotengine/godot/Godot;)V

    invoke-interface {v2, v3}, Lorg/godotengine/godot/GodotRenderView;->queueOnRenderThread(Ljava/lang/Runnable;)V

    .line 561
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 562
    .local v3, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v3, v0}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainCreate(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v4

    .line 563
    .local v4, "pluginView":Landroid/view/View;
    if-eqz v4, :cond_a

    .line 564
    invoke-virtual {v3}, Lorg/godotengine/godot/plugin/GodotPlugin;->shouldBeOnTop()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 565
    iget-object v5, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 567
    :cond_b
    iget-object v5, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_4

    .line 572
    .end local v3    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    .end local v4    # "pluginView":Landroid/view/View;
    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, v7, Lorg/godotengine/godot/Godot;->renderViewInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "decorView":Landroid/view/View;
    .end local v12    # "editText":Lorg/godotengine/godot/input/GodotEditText;
    nop

    .line 579
    const/4 v1, 0x4

    invoke-static {v10, v11, v14, v1, v13}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 580
    nop

    .line 581
    iget-object v0, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    return-object v0

    .line 574
    :catchall_0
    move-exception v0

    iget-boolean v1, v7, Lorg/godotengine/godot/Godot;->renderViewInitialized:Z

    if-nez v1, :cond_e

    .line 575
    iget-object v1, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 576
    :cond_d
    iput-object v13, v7, Lorg/godotengine/godot/Godot;->containerLayout:Landroid/widget/FrameLayout;

    .line 579
    :cond_e
    const/4 v1, 0x4

    invoke-static {v10, v11, v14, v1, v13}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    throw v0

    .line 456
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onInitNativeLayer() must be invoked successfully prior to initializing the render view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPause(Lorg/godotengine/godot/GodotHost;)V
    .locals 3
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/Godot;->resumed:Z

    .line 630
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->onActivityPaused()V

    .line 635
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/godotengine/godot/Godot;->godotInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 636
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 637
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainPause()V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 639
    :cond_2
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 697
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 699
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    :goto_1
    if-ge v0, v1, :cond_2

    .line 701
    aget-object v2, p2, v0

    .line 702
    aget v3, p3, v0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 700
    :goto_2
    invoke-static {v2, v3}, Lorg/godotengine/godot/GodotLib;->requestPermissionResult(Ljava/lang/String;Z)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public final onResume(Lorg/godotengine/godot/GodotHost;)V
    .locals 3
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/Godot;->resumed:Z

    .line 596
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/godotengine/godot/GodotRenderView;->onActivityResumed()V

    .line 601
    :cond_1
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->registerSensorsIfNeeded()V

    .line 602
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->useImmersive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/godotengine/godot/Godot;->enableImmersiveMode(ZZ)V

    .line 603
    invoke-direct {p0}, Lorg/godotengine/godot/Godot;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 604
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onMainResume()V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 606
    :cond_2
    return-void
.end method

.method public final onStart(Lorg/godotengine/godot/GodotHost;)V
    .locals 3
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->onActivityStarted()V

    .line 591
    :cond_1
    return-void
.end method

.method public final onStop(Lorg/godotengine/godot/GodotHost;)V
    .locals 3
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    sget-object v0, Lorg/godotengine/godot/Godot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->primaryHost:Lorg/godotengine/godot/GodotHost;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->onActivityStopped()V

    .line 648
    :cond_1
    return-void
.end method

.method public final requestPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1063
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {p1, v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->requestPermission(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    return v1
.end method

.method public final requestPermissions()Z
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->requestManifestPermissions(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotRenderView;->queueOnRenderThread(Ljava/lang/Runnable;)V

    .line 806
    :cond_0
    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 816
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 817
    return-void
.end method

.method public final setClipboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 914
    const-string v0, "myLabel"

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 915
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lorg/godotengine/godot/Godot;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 916
    return-void
.end method

.method public final setIo(Lorg/godotengine/godot/GodotIO;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/godotengine/godot/GodotIO;

    .line 180
    iput-object p1, p0, Lorg/godotengine/godot/Godot;->io:Lorg/godotengine/godot/GodotIO;

    return-void
.end method

.method public final setRenderView(Lorg/godotengine/godot/GodotRenderView;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/godotengine/godot/GodotRenderView;

    .line 191
    iput-object p1, p0, Lorg/godotengine/godot/Godot;->renderView:Lorg/godotengine/godot/GodotRenderView;

    return-void
.end method
