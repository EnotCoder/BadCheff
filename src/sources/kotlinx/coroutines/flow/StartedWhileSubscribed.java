package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.ULong$$ExternalSyntheticBackport0;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: SharingStarted.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u000bH\u0017J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/flow/StartedWhileSubscribed;", "Lkotlinx/coroutines/flow/SharingStarted;", "stopTimeout", "", "replayExpiration", "(JJ)V", "command", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/SharingCommand;", "subscriptionCount", "Lkotlinx/coroutines/flow/StateFlow;", "", "equals", "", "other", "", "hashCode", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
final class StartedWhileSubscribed implements SharingStarted {
    private final long replayExpiration;
    private final long stopTimeout;

    public StartedWhileSubscribed(long stopTimeout, long replayExpiration) {
        this.stopTimeout = stopTimeout;
        this.replayExpiration = replayExpiration;
        if (!(stopTimeout >= 0)) {
            throw new IllegalArgumentException(("stopTimeout(" + stopTimeout + " ms) cannot be negative").toString());
        }
        if (replayExpiration >= 0) {
        } else {
            throw new IllegalArgumentException(("replayExpiration(" + replayExpiration + " ms) cannot be negative").toString());
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1, reason: invalid class name */
    /* JADX INFO: compiled from: SharingStarted.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "count", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {178, 180, 182, 183, 185}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function3<FlowCollector<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {
        /* synthetic */ int I$0;
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super SharingCommand> flowCollector, Integer num, Continuation<? super Unit> continuation) {
            return invoke(flowCollector, num.intValue(), continuation);
        }

        public final Object invoke(FlowCollector<? super SharingCommand> flowCollector, int i, Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = StartedWhileSubscribed.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = flowCollector;
            anonymousClass1.I$0 = i;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0077  */
        /* JADX WARN: Code duplicated, block: B:25:0x0087 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:28:0x009c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:32:0x00af A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:33:0x00b0  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) throws Throwable {
            AnonymousClass1 anonymousClass1;
            FlowCollector $this$transformLatest;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
                    $this$transformLatest = (FlowCollector) anonymousClass1.L$0;
                    int count = anonymousClass1.I$0;
                    if (count > 0) {
                        anonymousClass1.label = 1;
                        if ($this$transformLatest.emit(SharingCommand.START, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        anonymousClass1.L$0 = $this$transformLatest;
                        anonymousClass1.label = 2;
                        if (DelayKt.delay(StartedWhileSubscribed.this.stopTimeout, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        if (StartedWhileSubscribed.this.replayExpiration > 0) {
                            anonymousClass1.L$0 = $this$transformLatest;
                            anonymousClass1.label = 3;
                            if ($this$transformLatest.emit(SharingCommand.STOP, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            anonymousClass1.L$0 = $this$transformLatest;
                            anonymousClass1.label = 4;
                            if (DelayKt.delay(StartedWhileSubscribed.this.replayExpiration, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        anonymousClass1.L$0 = null;
                        anonymousClass1.label = 5;
                        if ($this$transformLatest.emit(SharingCommand.STOP_AND_RESET_REPLAY_CACHE, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 2:
                    anonymousClass1 = this;
                    $this$transformLatest = (FlowCollector) anonymousClass1.L$0;
                    ResultKt.throwOnFailure($result);
                    if (StartedWhileSubscribed.this.replayExpiration > 0) {
                        anonymousClass1.L$0 = $this$transformLatest;
                        anonymousClass1.label = 3;
                        if ($this$transformLatest.emit(SharingCommand.STOP, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        anonymousClass1.L$0 = $this$transformLatest;
                        anonymousClass1.label = 4;
                        if (DelayKt.delay(StartedWhileSubscribed.this.replayExpiration, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 5;
                    if ($this$transformLatest.emit(SharingCommand.STOP_AND_RESET_REPLAY_CACHE, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 3:
                    anonymousClass1 = this;
                    $this$transformLatest = (FlowCollector) anonymousClass1.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass1.L$0 = $this$transformLatest;
                    anonymousClass1.label = 4;
                    if (DelayKt.delay(StartedWhileSubscribed.this.replayExpiration, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 5;
                    if ($this$transformLatest.emit(SharingCommand.STOP_AND_RESET_REPLAY_CACHE, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 4:
                    anonymousClass1 = this;
                    $this$transformLatest = (FlowCollector) anonymousClass1.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 5;
                    if ($this$transformLatest.emit(SharingCommand.STOP_AND_RESET_REPLAY_CACHE, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 5:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public Flow<SharingCommand> command(StateFlow<Integer> subscriptionCount) {
        return FlowKt.distinctUntilChanged(FlowKt.dropWhile(FlowKt.transformLatest(subscriptionCount, new AnonymousClass1(null)), new AnonymousClass2(null)));
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedWhileSubscribed$command$2, reason: invalid class name */
    /* JADX INFO: compiled from: SharingStarted.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    SharingCommand it = (SharingCommand) this.L$0;
                    return Boxing.boxBoolean(it != SharingCommand.START);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public String toString() {
        List $this$toString_u24lambda_u2d2 = CollectionsKt.createListBuilder(2);
        if (this.stopTimeout > 0) {
            $this$toString_u24lambda_u2d2.add("stopTimeout=" + this.stopTimeout + "ms");
        }
        if (this.replayExpiration < Long.MAX_VALUE) {
            $this$toString_u24lambda_u2d2.add("replayExpiration=" + this.replayExpiration + "ms");
        }
        List params = CollectionsKt.build($this$toString_u24lambda_u2d2);
        return "SharingStarted.WhileSubscribed(" + CollectionsKt.joinToString$default(params, null, null, null, 0, null, null, 63, null) + ')';
    }

    public boolean equals(Object other) {
        return (other instanceof StartedWhileSubscribed) && this.stopTimeout == ((StartedWhileSubscribed) other).stopTimeout && this.replayExpiration == ((StartedWhileSubscribed) other).replayExpiration;
    }

    public int hashCode() {
        return (ULong$$ExternalSyntheticBackport0.m(this.stopTimeout) * 31) + ULong$$ExternalSyntheticBackport0.m(this.replayExpiration);
    }
}
