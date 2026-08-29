package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\b\u001aU\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u00152%\b\u0002\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0017H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00100\bH\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"REUSABLE_CLAIMED", "Lkotlinx/coroutines/internal/Symbol;", "getREUSABLE_CLAIMED$annotations", "()V", "UNDEFINED", "getUNDEFINED$annotations", "executeUnconfined", "", "Lkotlinx/coroutines/internal/DispatchedContinuation;", "contState", "", "mode", "", "doYield", "block", "Lkotlin/Function0;", "", "resumeCancellableWith", "T", "Lkotlin/coroutines/Continuation;", "result", "Lkotlin/Result;", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "yieldUndispatched", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0}, xi = 48)
public final class DispatchedContinuationKt {
    private static final Symbol UNDEFINED = new Symbol("UNDEFINED");
    public static final Symbol REUSABLE_CLAIMED = new Symbol("REUSABLE_CLAIMED");

    public static /* synthetic */ void getREUSABLE_CLAIMED$annotations() {
    }

    private static /* synthetic */ void getUNDEFINED$annotations() {
    }

    public static /* synthetic */ void resumeCancellableWith$default(Continuation continuation, Object obj, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        resumeCancellableWith(continuation, obj, function1);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d4 A[Catch: all -> 0x0113, TRY_ENTER, TryCatch #2 {all -> 0x0113, blocks: (B:30:0x00d4, B:31:0x00d9), top: B:79:0x00d2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00d9 A[Catch: all -> 0x0113, TRY_LEAVE, TryCatch #2 {all -> 0x0113, blocks: (B:30:0x00d4, B:31:0x00d9), top: B:79:0x00d2 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00fa A[Catch: all -> 0x012c, TryCatch #5 {all -> 0x012c, blocks: (B:38:0x00f4, B:58:0x0124, B:40:0x00fa, B:47:0x0108, B:51:0x0112, B:49:0x010e), top: B:85:0x00b1 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x011d  */
    /* JADX WARN: Code duplicated, block: B:92:? A[LOOP:0: B:58:0x0124->B:92:?, LOOP_END, SYNTHETIC] */
    public static final <T> void resumeCancellableWith(Continuation<? super T> continuation, Object result, Function1<? super Throwable, Unit> function1) {
        boolean z;
        Continuation<T> continuation2;
        CoroutineContext context$iv$iv$iv;
        Object oldValue$iv$iv$iv;
        UndispatchedCoroutine<?> undispatchedCoroutineUpdateUndispatchedCompletion;
        UndispatchedCoroutine<?> undispatchedCoroutine;
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation this_$iv = (DispatchedContinuation) continuation;
            Object state$iv = CompletionStateKt.toState(result, function1);
            if (this_$iv.dispatcher.isDispatchNeeded(this_$iv.getContext())) {
                this_$iv._state = state$iv;
                this_$iv.resumeMode = 1;
                this_$iv.dispatcher.mo1632dispatch(this_$iv.getContext(), this_$iv);
                return;
            }
            if (DebugKt.getASSERTIONS_ENABLED()) {
            }
            EventLoop eventLoop$iv$iv = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
            if (eventLoop$iv$iv.isUnconfinedLoopActive()) {
                this_$iv._state = state$iv;
                this_$iv.resumeMode = 1;
                eventLoop$iv$iv.dispatchUnconfined(this_$iv);
                return;
            }
            DispatchedContinuation $this$runUnconfinedEventLoop$iv$iv$iv = this_$iv;
            eventLoop$iv$iv.incrementUseCount(true);
            try {
                Job job$iv$iv = (Job) this_$iv.getContext().get(Job.INSTANCE);
                if (job$iv$iv != null) {
                    try {
                        if (!job$iv$iv.isActive()) {
                            CancellationException cause$iv$iv = job$iv$iv.getCancellationException();
                            this_$iv.cancelCompletedResult$kotlinx_coroutines_core(state$iv, cause$iv$iv);
                            Result.Companion companion = Result.INSTANCE;
                            this_$iv.resumeWith(Result.m79constructorimpl(ResultKt.createFailure(cause$iv$iv)));
                            z = true;
                        } else {
                            z = false;
                        }
                        try {
                            if (!z) {
                                continuation2 = this_$iv.continuation;
                                Object countOrElement$iv$iv$iv = this_$iv.countOrElement;
                                context$iv$iv$iv = continuation2.getContext();
                                try {
                                    oldValue$iv$iv$iv = ThreadContextKt.updateThreadContext(context$iv$iv$iv, countOrElement$iv$iv$iv);
                                    try {
                                        if (oldValue$iv$iv$iv != ThreadContextKt.NO_THREAD_ELEMENTS) {
                                            undispatchedCoroutineUpdateUndispatchedCompletion = CoroutineContextKt.updateUndispatchedCompletion(continuation2, context$iv$iv$iv, oldValue$iv$iv$iv);
                                        } else {
                                            undispatchedCoroutineUpdateUndispatchedCompletion = null;
                                        }
                                        undispatchedCoroutine = undispatchedCoroutineUpdateUndispatchedCompletion;
                                        try {
                                            try {
                                                this_$iv.continuation.resumeWith(result);
                                                Unit unit = Unit.INSTANCE;
                                                if (undispatchedCoroutine != null || undispatchedCoroutine.clearThreadContext()) {
                                                    ThreadContextKt.restoreThreadContext(context$iv$iv$iv, oldValue$iv$iv$iv);
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                                                    ThreadContextKt.restoreThreadContext(context$iv$iv$iv, oldValue$iv$iv$iv);
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        e$iv$iv$iv = th3;
                                        try {
                                            $this$runUnconfinedEventLoop$iv$iv$iv.handleFatalException(e$iv$iv$iv, null);
                                        } finally {
                                            eventLoop$iv$iv.decrementUseCount(true);
                                        }
                                    }
                                } catch (Throwable th4) {
                                    e$iv$iv$iv = th4;
                                }
                            }
                            while (eventLoop$iv$iv.processUnconfinedEvent()) {
                            }
                        } catch (Throwable th5) {
                            e$iv$iv$iv = th5;
                        }
                    } catch (Throwable th6) {
                        e$iv$iv$iv = th6;
                        $this$runUnconfinedEventLoop$iv$iv$iv.handleFatalException(e$iv$iv$iv, null);
                        return;
                    }
                } else {
                    z = false;
                    if (!z) {
                        continuation2 = this_$iv.continuation;
                        Object countOrElement$iv$iv$iv2 = this_$iv.countOrElement;
                        context$iv$iv$iv = continuation2.getContext();
                        oldValue$iv$iv$iv = ThreadContextKt.updateThreadContext(context$iv$iv$iv, countOrElement$iv$iv$iv2);
                        if (oldValue$iv$iv$iv != ThreadContextKt.NO_THREAD_ELEMENTS) {
                            undispatchedCoroutineUpdateUndispatchedCompletion = CoroutineContextKt.updateUndispatchedCompletion(continuation2, context$iv$iv$iv, oldValue$iv$iv$iv);
                        } else {
                            undispatchedCoroutineUpdateUndispatchedCompletion = null;
                        }
                        undispatchedCoroutine = undispatchedCoroutineUpdateUndispatchedCompletion;
                        this_$iv.continuation.resumeWith(result);
                        Unit unit2 = Unit.INSTANCE;
                        if (undispatchedCoroutine != null) {
                            ThreadContextKt.restoreThreadContext(context$iv$iv$iv, oldValue$iv$iv$iv);
                        } else {
                            ThreadContextKt.restoreThreadContext(context$iv$iv$iv, oldValue$iv$iv$iv);
                        }
                    }
                    while (eventLoop$iv$iv.processUnconfinedEvent()) {
                    }
                }
            } catch (Throwable th7) {
                e$iv$iv$iv = th7;
            }
            return;
        }
        continuation.resumeWith(result);
    }

    public static final boolean yieldUndispatched(DispatchedContinuation<? super Unit> dispatchedContinuation) {
        Object contState$iv = Unit.INSTANCE;
        if (DebugKt.getASSERTIONS_ENABLED()) {
        }
        EventLoop eventLoop$iv = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$iv.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop$iv.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = contState$iv;
            dispatchedContinuation.resumeMode = 1;
            eventLoop$iv.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        DispatchedContinuation<? super Unit> $this$runUnconfinedEventLoop$iv$iv = dispatchedContinuation;
        eventLoop$iv.incrementUseCount(true);
        try {
            dispatchedContinuation.run();
            do {
            } while (eventLoop$iv.processUnconfinedEvent());
        } catch (Throwable e$iv$iv) {
            try {
                $this$runUnconfinedEventLoop$iv$iv.handleFatalException(e$iv$iv, null);
            } finally {
                eventLoop$iv.decrementUseCount(true);
            }
        }
        return false;
    }

    static /* synthetic */ boolean executeUnconfined$default(DispatchedContinuation dispatchedContinuation, Object obj, int i, boolean z, Function0 function0, int i2, Object obj2) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if ((i != -1 ? 1 : 0) == 0) {
                throw new AssertionError();
            }
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (z && eventLoop$kotlinx_coroutines_core.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = obj;
            dispatchedContinuation.resumeMode = i;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        DispatchedContinuation dispatchedContinuation2 = dispatchedContinuation;
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            function0.invoke();
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                dispatchedContinuation2.handleFatalException(th, null);
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                InlineMarker.finallyEnd(1);
            }
        }
        return false;
    }

    private static final boolean executeUnconfined(DispatchedContinuation<?> dispatchedContinuation, Object obj, int i, boolean z, Function0<Unit> function0) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if ((i != -1 ? 1 : 0) == 0) {
                throw new AssertionError();
            }
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (z && eventLoop$kotlinx_coroutines_core.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = obj;
            dispatchedContinuation.resumeMode = i;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        DispatchedContinuation<?> dispatchedContinuation2 = dispatchedContinuation;
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            function0.invoke();
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                dispatchedContinuation2.handleFatalException(th, null);
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                InlineMarker.finallyEnd(1);
            }
        }
        return false;
    }
}
