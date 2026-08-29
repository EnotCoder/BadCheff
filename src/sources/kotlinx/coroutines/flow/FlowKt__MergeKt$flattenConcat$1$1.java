package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "value", "Lkotlinx/coroutines/flow/Flow;", "emit", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
final class FlowKt__MergeKt$flattenConcat$1$1<T> implements FlowCollector {
    final /* synthetic */ FlowCollector<T> $this_unsafeFlow;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__MergeKt$flattenConcat$1$1(FlowCollector<? super T> flowCollector) {
        this.$this_unsafeFlow = flowCollector;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
        return emit((Flow) value, (Continuation<? super Unit>) $completion);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object emit(Flow<? extends T> flow, Continuation<? super Unit> continuation) throws Throwable {
        FlowKt__MergeKt$flattenConcat$1$1$emit$1 flowKt__MergeKt$flattenConcat$1$1$emit$1;
        if (continuation instanceof FlowKt__MergeKt$flattenConcat$1$1$emit$1) {
            flowKt__MergeKt$flattenConcat$1$1$emit$1 = (FlowKt__MergeKt$flattenConcat$1$1$emit$1) continuation;
            if ((flowKt__MergeKt$flattenConcat$1$1$emit$1.label & Integer.MIN_VALUE) != 0) {
                flowKt__MergeKt$flattenConcat$1$1$emit$1.label -= Integer.MIN_VALUE;
            } else {
                flowKt__MergeKt$flattenConcat$1$1$emit$1 = new FlowKt__MergeKt$flattenConcat$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__MergeKt$flattenConcat$1$1$emit$1 = new FlowKt__MergeKt$flattenConcat$1$1$emit$1(this, continuation);
        }
        FlowKt__MergeKt$flattenConcat$1$1$emit$1 flowKt__MergeKt$flattenConcat$1$1$emit$2 = flowKt__MergeKt$flattenConcat$1$1$emit$1;
        Object $result = flowKt__MergeKt$flattenConcat$1$1$emit$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (flowKt__MergeKt$flattenConcat$1$1$emit$2.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                FlowCollector<T> flowCollector = this.$this_unsafeFlow;
                flowKt__MergeKt$flattenConcat$1$1$emit$2.label = 1;
                if (FlowKt.emitAll(flowCollector, flow, flowKt__MergeKt$flattenConcat$1$1$emit$2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
