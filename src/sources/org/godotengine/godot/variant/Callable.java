package org.godotengine.godot.variant;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Callable.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0007\"\u00020\u0001H\u0000¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0004J\b\u0010\f\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/godotengine/godot/variant/Callable;", "", "nativeCallablePointer", "", "(J)V", NotificationCompat.CATEGORY_CALL, "params", "", "call$lib_templateDebug", "([Ljava/lang/Object;)Ljava/lang/Object;", "finalize", "", "getNativePointer", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Callable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long nativeCallablePointer;

    @JvmStatic
    public static final Object call(long j, String str, Object... objArr) {
        return INSTANCE.call(j, str, objArr);
    }

    @JvmStatic
    public static final void callDeferred(long j, String str, Object... objArr) {
        INSTANCE.callDeferred(j, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native Object nativeCall(long j, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native Object nativeCallObject(long j, String str, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeCallObjectDeferred(long j, String str, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void releaseNativePointer(long j);

    private Callable(long nativeCallablePointer) {
        this.nativeCallablePointer = nativeCallablePointer;
    }

    /* JADX INFO: compiled from: Callable.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\nJ1\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\rJ#\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u00052\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\tH\u0083 J+\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\tH\u0083 J)\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\tH\u0083 J\u0011\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0005H\u0083 ¨\u0006\u0015"}, d2 = {"Lorg/godotengine/godot/variant/Callable$Companion;", "", "()V", NotificationCompat.CATEGORY_CALL, "godotObjectId", "", "methodName", "", "methodParameters", "", "(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "callDeferred", "", "(JLjava/lang/String;[Ljava/lang/Object;)V", "nativeCall", "pointer", "params", "nativeCallObject", "nativeCallObjectDeferred", "releaseNativePointer", "nativePointer", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final Object nativeCall(long j, Object[] objArr) {
            return Callable.nativeCall(j, objArr);
        }

        @JvmStatic
        private final Object nativeCallObject(long j, String str, Object[] objArr) {
            return Callable.nativeCallObject(j, str, objArr);
        }

        @JvmStatic
        private final void nativeCallObjectDeferred(long j, String str, Object[] objArr) {
            Callable.nativeCallObjectDeferred(j, str, objArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void releaseNativePointer(long nativePointer) {
            Callable.releaseNativePointer(nativePointer);
        }

        private Companion() {
        }

        @JvmStatic
        public final Object call(long godotObjectId, String methodName, Object... methodParameters) {
            Intrinsics.checkNotNullParameter(methodName, "methodName");
            Intrinsics.checkNotNullParameter(methodParameters, "methodParameters");
            return nativeCallObject(godotObjectId, methodName, methodParameters);
        }

        @JvmStatic
        public final void callDeferred(long godotObjectId, String methodName, Object... methodParameters) {
            Intrinsics.checkNotNullParameter(methodName, "methodName");
            Intrinsics.checkNotNullParameter(methodParameters, "methodParameters");
            nativeCallObjectDeferred(godotObjectId, methodName, methodParameters);
        }
    }

    public final Object call$lib_templateDebug(Object... params) {
        Intrinsics.checkNotNullParameter(params, "params");
        long j = this.nativeCallablePointer;
        if (j != 0) {
            return INSTANCE.nativeCall(j, params);
        }
        return null;
    }

    /* JADX INFO: renamed from: getNativePointer, reason: from getter */
    private final long getNativeCallablePointer() {
        return this.nativeCallablePointer;
    }

    protected final void finalize() {
        INSTANCE.releaseNativePointer(this.nativeCallablePointer);
    }
}
