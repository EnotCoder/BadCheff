package kotlinx.coroutines.internal;

import androidx.concurrent.futures.AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletedWithCancellation;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000O2\u00060?j\u0002`@2\b\u0012\u0004\u0012\u00028\u00000\u0004B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0011\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0010¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001d\u001a\n\u0018\u00010\u001bj\u0004\u0018\u0001`\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010 \u001a\u00020\u001f¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020\b¢\u0006\u0004\b$\u0010\nJH\u0010+\u001a\u00020\b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000%2%\b\b\u0010*\u001a\u001f\u0012\u0013\u0012\u00110\r¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\b\u0018\u00010'H\u0086\bø\u0001\u0000¢\u0006\u0004\b+\u0010,J\u001a\u0010.\u001a\u00020\u001f2\b\u0010-\u001a\u0004\u0018\u00010\u000bH\u0086\b¢\u0006\u0004\b.\u0010/J!\u00100\u001a\u00020\b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0086\bø\u0001\u0000¢\u0006\u0004\b0\u00101J \u00102\u001a\u00020\b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0016ø\u0001\u0000¢\u0006\u0004\b2\u00101J\u0011\u00105\u001a\u0004\u0018\u00010\u000bH\u0010¢\u0006\u0004\b3\u00104J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u001b\u0010:\u001a\u0004\u0018\u00010\r2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u000309¢\u0006\u0004\b:\u0010;R\u001e\u0010<\u001a\u0004\u0018\u00010\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b<\u0010=\u0012\u0004\b>\u0010\nR\u001c\u0010C\u001a\n\u0018\u00010?j\u0004\u0018\u0001`@8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0014\u0010\u0016\u001a\u00020\u00158\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bD\u0010ER\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010FR\u0014\u0010G\u001a\u00020\u000b8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\bG\u0010=R\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010KR\u001a\u0010M\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006N"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", "T", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "", "awaitReusability", "()V", "", "takenState", "", "cause", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "context", "value", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "isReusable", "()Z", "postponeCancellation", "(Ljava/lang/Throwable;)Z", "release", "Lkotlin/Result;", "result", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onCancellation", "resumeCancellableWith", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "state", "resumeCancelled", "(Ljava/lang/Object;)Z", "resumeUndispatchedWith", "(Ljava/lang/Object;)V", "resumeWith", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/CancellableContinuation;", "tryReleaseClaimedContinuation", "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;", "_state", "Ljava/lang/Object;", "get_state$kotlinx_coroutines_core$annotations", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "countOrElement", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CoroutineDispatcher;", "getReusableCancellableContinuation", "reusableCancellableContinuation", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _reusableCancellableContinuation$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation");
    private volatile /* synthetic */ Object _reusableCancellableContinuation;
    public Object _state;
    public final Continuation<T> continuation;
    public final Object countOrElement;
    public final CoroutineDispatcher dispatcher;

    public static /* synthetic */ void get_state$kotlinx_coroutines_core$annotations() {
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public CoroutineContext get$context() {
        return this.continuation.get$context();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(CoroutineDispatcher dispatcher, Continuation<? super T> continuation) {
        super(-1);
        this.dispatcher = dispatcher;
        this.continuation = continuation;
        this._state = DispatchedContinuationKt.UNDEFINED;
        this.countOrElement = ThreadContextKt.threadContextElements(get$context());
        this._reusableCancellableContinuation = null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.continuation;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    private final CancellableContinuationImpl<?> getReusableCancellableContinuation() {
        Object obj = this._reusableCancellableContinuation;
        if (obj instanceof CancellableContinuationImpl) {
            return (CancellableContinuationImpl) obj;
        }
        return null;
    }

    public final boolean isReusable() {
        return this._reusableCancellableContinuation != null;
    }

    public final void awaitReusability() {
        Object it;
        do {
            it = this._reusableCancellableContinuation;
        } while (it == DispatchedContinuationKt.REUSABLE_CLAIMED);
    }

    public final void release() {
        awaitReusability();
        CancellableContinuationImpl<?> reusableCancellableContinuation = getReusableCancellableContinuation();
        if (reusableCancellableContinuation != null) {
            reusableCancellableContinuation.detachChild$kotlinx_coroutines_core();
        }
    }

    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation() {
        while (true) {
            Object state = this._reusableCancellableContinuation;
            if (state == null) {
                this._reusableCancellableContinuation = DispatchedContinuationKt.REUSABLE_CLAIMED;
                return null;
            }
            if (state instanceof CancellableContinuationImpl) {
                if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_reusableCancellableContinuation$FU, this, state, DispatchedContinuationKt.REUSABLE_CLAIMED)) {
                    return (CancellableContinuationImpl) state;
                }
            } else if (state != DispatchedContinuationKt.REUSABLE_CLAIMED && !(state instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + state).toString());
            }
        }
    }

    public final Throwable tryReleaseClaimedContinuation(CancellableContinuation<?> continuation) {
        do {
            Object state = this._reusableCancellableContinuation;
            if (state != DispatchedContinuationKt.REUSABLE_CLAIMED) {
                if (state instanceof Throwable) {
                    if (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_reusableCancellableContinuation$FU, this, state, null)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    return (Throwable) state;
                }
                throw new IllegalStateException(("Inconsistent state " + state).toString());
            }
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_reusableCancellableContinuation$FU, this, DispatchedContinuationKt.REUSABLE_CLAIMED, continuation));
        return null;
    }

    public final boolean postponeCancellation(Throwable cause) {
        while (true) {
            Object state = this._reusableCancellableContinuation;
            if (Intrinsics.areEqual(state, DispatchedContinuationKt.REUSABLE_CLAIMED)) {
                if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_reusableCancellableContinuation$FU, this, DispatchedContinuationKt.REUSABLE_CLAIMED, cause)) {
                    return true;
                }
            } else {
                if (state instanceof Throwable) {
                    return true;
                }
                if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_reusableCancellableContinuation$FU, this, state, null)) {
                    return false;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        Object state = this._state;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(state != DispatchedContinuationKt.UNDEFINED)) {
                throw new AssertionError();
            }
        }
        this._state = DispatchedContinuationKt.UNDEFINED;
        return state;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        CoroutineContext context = this.continuation.get$context();
        Object state = CompletionStateKt.toState$default(result, null, 1, null);
        if (this.dispatcher.isDispatchNeeded(context)) {
            this._state = state;
            this.resumeMode = 0;
            this.dispatcher.mo1632dispatch(context, this);
            return;
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
        }
        EventLoop eventLoop$iv = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$iv.isUnconfinedLoopActive()) {
            this._state = state;
            this.resumeMode = 0;
            eventLoop$iv.dispatchUnconfined(this);
            return;
        }
        DispatchedContinuation<T> $this$runUnconfinedEventLoop$iv$iv = this;
        eventLoop$iv.incrementUseCount(true);
        try {
            CoroutineContext context$iv = get$context();
            Object countOrElement$iv = this.countOrElement;
            Object oldValue$iv = ThreadContextKt.updateThreadContext(context$iv, countOrElement$iv);
            try {
                this.continuation.resumeWith(result);
                Unit unit = Unit.INSTANCE;
                ThreadContextKt.restoreThreadContext(context$iv, oldValue$iv);
                while (eventLoop$iv.processUnconfinedEvent()) {
                }
            } catch (Throwable th) {
                ThreadContextKt.restoreThreadContext(context$iv, oldValue$iv);
                throw th;
            }
        } catch (Throwable e$iv$iv) {
            try {
                $this$runUnconfinedEventLoop$iv$iv.handleFatalException(e$iv$iv, null);
            } finally {
                eventLoop$iv.decrementUseCount(true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:22:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ff A[Catch: all -> 0x013f, TryCatch #6 {all -> 0x013f, blocks: (B:38:0x00f4, B:40:0x00f9, B:43:0x0102, B:59:0x0133, B:42:0x00ff, B:48:0x0110, B:50:0x0117, B:53:0x0120, B:54:0x0125, B:52:0x011d), top: B:87:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:57:0x012c  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:? A[LOOP:0: B:59:0x0133->B:92:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    public final void resumeCancellableWith(Object result, Function1<? super Throwable, Unit> onCancellation) {
        ?? r1;
        boolean z;
        Continuation<T> continuation;
        CoroutineContext context$iv$iv;
        Object oldValue$iv$iv;
        UndispatchedCoroutine<?> undispatchedCoroutineUpdateUndispatchedCompletion;
        UndispatchedCoroutine<?> undispatchedCoroutine;
        Object state = CompletionStateKt.toState(result, onCancellation);
        if (this.dispatcher.isDispatchNeeded(get$context())) {
            this._state = state;
            this.resumeMode = 1;
            this.dispatcher.mo1632dispatch(get$context(), this);
            return;
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state;
            this.resumeMode = 1;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        DispatchedContinuation<T> $this$runUnconfinedEventLoop$iv$iv = this;
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            Job job$iv = (Job) get$context().get(Job.INSTANCE);
            if (job$iv != null) {
                try {
                    if (job$iv.isActive()) {
                        z = false;
                    } else {
                        CancellationException cause$iv = job$iv.getCancellationException();
                        cancelCompletedResult$kotlinx_coroutines_core(state, cause$iv);
                        Result.Companion companion = Result.INSTANCE;
                        resumeWith(Result.m79constructorimpl(ResultKt.createFailure(cause$iv)));
                        z = true;
                    }
                    try {
                        if (!z) {
                            continuation = this.continuation;
                            Object countOrElement$iv$iv = this.countOrElement;
                            context$iv$iv = continuation.get$context();
                            oldValue$iv$iv = ThreadContextKt.updateThreadContext(context$iv$iv, countOrElement$iv$iv);
                            if (oldValue$iv$iv != ThreadContextKt.NO_THREAD_ELEMENTS) {
                                try {
                                    undispatchedCoroutineUpdateUndispatchedCompletion = CoroutineContextKt.updateUndispatchedCompletion(continuation, context$iv$iv, oldValue$iv$iv);
                                } catch (Throwable th) {
                                    e$iv$iv = th;
                                    try {
                                        $this$runUnconfinedEventLoop$iv$iv.handleFatalException(e$iv$iv, null);
                                        r1 = 1;
                                        InlineMarker.finallyStart(1);
                                    } catch (Throwable th2) {
                                        InlineMarker.finallyStart(1);
                                        eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                                        InlineMarker.finallyEnd(1);
                                        throw th2;
                                    }
                                }
                            } else {
                                try {
                                    undispatchedCoroutineUpdateUndispatchedCompletion = null;
                                } catch (Throwable th3) {
                                    e$iv$iv = th3;
                                    $this$runUnconfinedEventLoop$iv$iv.handleFatalException(e$iv$iv, null);
                                    r1 = 1;
                                    InlineMarker.finallyStart(1);
                                }
                            }
                            undispatchedCoroutine = undispatchedCoroutineUpdateUndispatchedCompletion;
                            try {
                                try {
                                    this.continuation.resumeWith(result);
                                    Unit unit = Unit.INSTANCE;
                                    InlineMarker.finallyStart(1);
                                    if (undispatchedCoroutine != null || undispatchedCoroutine.clearThreadContext()) {
                                        ThreadContextKt.restoreThreadContext(context$iv$iv, oldValue$iv$iv);
                                    }
                                    InlineMarker.finallyEnd(1);
                                } catch (Throwable th4) {
                                    th = th4;
                                    InlineMarker.finallyStart(1);
                                    if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                                        ThreadContextKt.restoreThreadContext(context$iv$iv, oldValue$iv$iv);
                                    }
                                    InlineMarker.finallyEnd(1);
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        }
                        while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
                        }
                        r1 = 1;
                        InlineMarker.finallyStart(1);
                    } catch (Throwable th6) {
                        e$iv$iv = th6;
                    }
                } catch (Throwable th7) {
                    e$iv$iv = th7;
                    $this$runUnconfinedEventLoop$iv$iv.handleFatalException(e$iv$iv, null);
                    r1 = 1;
                    InlineMarker.finallyStart(1);
                    eventLoop$kotlinx_coroutines_core.decrementUseCount(r1);
                    InlineMarker.finallyEnd(r1);
                }
            } else {
                z = false;
                if (!z) {
                    continuation = this.continuation;
                    Object countOrElement$iv$iv2 = this.countOrElement;
                    context$iv$iv = continuation.get$context();
                    oldValue$iv$iv = ThreadContextKt.updateThreadContext(context$iv$iv, countOrElement$iv$iv2);
                    if (oldValue$iv$iv != ThreadContextKt.NO_THREAD_ELEMENTS) {
                        undispatchedCoroutineUpdateUndispatchedCompletion = CoroutineContextKt.updateUndispatchedCompletion(continuation, context$iv$iv, oldValue$iv$iv);
                    } else {
                        undispatchedCoroutineUpdateUndispatchedCompletion = null;
                    }
                    undispatchedCoroutine = undispatchedCoroutineUpdateUndispatchedCompletion;
                    this.continuation.resumeWith(result);
                    Unit unit2 = Unit.INSTANCE;
                    InlineMarker.finallyStart(1);
                    if (undispatchedCoroutine != null) {
                        ThreadContextKt.restoreThreadContext(context$iv$iv, oldValue$iv$iv);
                    } else {
                        ThreadContextKt.restoreThreadContext(context$iv$iv, oldValue$iv$iv);
                    }
                    InlineMarker.finallyEnd(1);
                }
                while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
                }
                r1 = 1;
                InlineMarker.finallyStart(1);
            }
        } catch (Throwable th8) {
            e$iv$iv = th8;
        }
        eventLoop$kotlinx_coroutines_core.decrementUseCount(r1);
        InlineMarker.finallyEnd(r1);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object takenState, Throwable cause) {
        if (takenState instanceof CompletedWithCancellation) {
            ((CompletedWithCancellation) takenState).onCancellation.invoke(cause);
        }
    }

    public final boolean resumeCancelled(Object state) {
        Job job = (Job) get$context().get(Job.INSTANCE);
        if (job != null && !job.isActive()) {
            CancellationException cause = job.getCancellationException();
            cancelCompletedResult$kotlinx_coroutines_core(state, cause);
            Result.Companion companion = Result.INSTANCE;
            resumeWith(Result.m79constructorimpl(ResultKt.createFailure(cause)));
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0032 A[DONT_GENERATE] */
    public final void resumeUndispatchedWith(Object result) {
        UndispatchedCoroutine<?> undispatchedCoroutineUpdateUndispatchedCompletion;
        Continuation<T> continuation = this.continuation;
        Object countOrElement$iv = this.countOrElement;
        CoroutineContext context$iv = continuation.get$context();
        Object oldValue$iv = ThreadContextKt.updateThreadContext(context$iv, countOrElement$iv);
        if (oldValue$iv != ThreadContextKt.NO_THREAD_ELEMENTS) {
            undispatchedCoroutineUpdateUndispatchedCompletion = CoroutineContextKt.updateUndispatchedCompletion(continuation, context$iv, oldValue$iv);
        } else {
            undispatchedCoroutineUpdateUndispatchedCompletion = null;
        }
        try {
            this.continuation.resumeWith(result);
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            if (undispatchedCoroutineUpdateUndispatchedCompletion == null || undispatchedCoroutineUpdateUndispatchedCompletion.clearThreadContext()) {
                ThreadContextKt.restoreThreadContext(context$iv, oldValue$iv);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public final void dispatchYield$kotlinx_coroutines_core(CoroutineContext context, T value) {
        this._state = value;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(context, this);
    }

    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + DebugStringsKt.toDebugString(this.continuation) + ']';
    }
}
