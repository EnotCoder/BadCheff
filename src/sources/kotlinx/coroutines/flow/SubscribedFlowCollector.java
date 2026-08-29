package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: compiled from: Share.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002BE\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\u0004\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0019\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\u0011\u0010\u000f\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010R:\u0010\u0004\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tX\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/flow/SubscribedFlowCollector;", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "action", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "emit", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSubscription", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class SubscribedFlowCollector<T> implements FlowCollector<T> {
    private final Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> action;
    private final FlowCollector<T> collector;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1, reason: invalid class name */
    /* JADX INFO: compiled from: Share.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", i = {0, 0}, l = {419, 423}, m = "onSubscription", n = {"this", "safeCollector"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SubscribedFlowCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubscribedFlowCollector<T> subscribedFlowCollector, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = subscribedFlowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.onSubscription(this);
        }
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, Continuation<? super Unit> continuation) {
        return this.collector.emit(t, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SubscribedFlowCollector(FlowCollector<? super T> flowCollector, Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.collector = flowCollector;
        this.action = function2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:24:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlinx.coroutines.flow.FlowCollector<T>] */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    public final Object onSubscription(Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        SubscribedFlowCollector<T> subscribedFlowCollector;
        SafeCollector safeCollector;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        FlowCollector<T> flowCollector = (FlowCollector<T>) anonymousClass2.label;
        try {
            switch (flowCollector) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    subscribedFlowCollector = this;
                    safeCollector = new SafeCollector(subscribedFlowCollector.collector, anonymousClass2.getContext());
                    Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> function2 = subscribedFlowCollector.action;
                    anonymousClass2.L$0 = subscribedFlowCollector;
                    anonymousClass2.L$1 = safeCollector;
                    anonymousClass2.label = 1;
                    if (function2.invoke(safeCollector, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    safeCollector.releaseIntercepted();
                    flowCollector = subscribedFlowCollector.collector;
                    if (flowCollector instanceof SubscribedFlowCollector) {
                        anonymousClass2.L$0 = null;
                        anonymousClass2.L$1 = null;
                        anonymousClass2.label = 2;
                        if (((SubscribedFlowCollector) flowCollector).onSubscription(anonymousClass2) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    safeCollector = (SafeCollector) anonymousClass2.L$1;
                    subscribedFlowCollector = (SubscribedFlowCollector) anonymousClass2.L$0;
                    ResultKt.throwOnFailure(obj);
                    safeCollector.releaseIntercepted();
                    flowCollector = subscribedFlowCollector.collector;
                    if (flowCollector instanceof SubscribedFlowCollector) {
                        anonymousClass2.L$0 = null;
                        anonymousClass2.L$1 = null;
                        anonymousClass2.label = 2;
                        if (((SubscribedFlowCollector) flowCollector).onSubscription(anonymousClass2) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                case 2:
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th) {
            flowCollector.releaseIntercepted();
            throw th;
        }
    }
}
