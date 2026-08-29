package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SafeCollector.common.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class FlowKt__LimitKt$take$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ int $count$inlined;
    final /* synthetic */ Flow $this_take$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: SafeCollector.common.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1", f = "Limit.kt", i = {0}, l = {115}, m = "collect", n = {"$this$take_u24lambda_u2d4"}, s = {"L$0"})
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$take$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FlowCollector<? super T> flowCollector2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object $result = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass2.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.IntRef consumed = new Ref.IntRef();
                try {
                    Flow flow = this.$this_take$inlined;
                    FlowKt__LimitKt$take$2$1 flowKt__LimitKt$take$2$1 = new FlowKt__LimitKt$take$2$1(consumed, this.$count$inlined, flowCollector);
                    anonymousClass2.L$0 = flowCollector;
                    anonymousClass2.label = 1;
                    return flow.collect(flowKt__LimitKt$take$2$1, anonymousClass2) == coroutine_suspended ? coroutine_suspended : Unit.INSTANCE;
                } catch (AbortFlowException e) {
                    e = e;
                    flowCollector2 = flowCollector;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector2);
                }
                break;
            case 1:
                flowCollector2 = (FlowCollector) anonymousClass2.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                } catch (AbortFlowException e2) {
                    e = e2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector2);
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public FlowKt__LimitKt$take$$inlined$unsafeFlow$1(Flow flow, int i) {
        this.$this_take$inlined = flow;
        this.$count$inlined = i;
    }
}
