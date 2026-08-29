package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: compiled from: Transform.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
final class FlowKt__TransformKt$runningReduce$1$1<T> implements FlowCollector {
    final /* synthetic */ Ref.ObjectRef<Object> $accumulator;
    final /* synthetic */ Function3<T, T, Continuation<? super T>, Object> $operation;
    final /* synthetic */ FlowCollector<T> $this_unsafeFlow;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__TransformKt$runningReduce$1$1(Ref.ObjectRef<Object> objectRef, Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3, FlowCollector<? super T> flowCollector) {
        this.$accumulator = objectRef;
        this.$operation = function3;
        this.$this_unsafeFlow = flowCollector;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(T t, Continuation<? super Unit> continuation) throws Throwable {
        FlowKt__TransformKt$runningReduce$1$1$emit$1 flowKt__TransformKt$runningReduce$1$1$emit$1;
        FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$1;
        Ref.ObjectRef<Object> objectRef;
        Object obj;
        Ref.ObjectRef<Object> objectRef2;
        FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$2;
        FlowCollector<T> flowCollector;
        T t2;
        if (continuation instanceof FlowKt__TransformKt$runningReduce$1$1$emit$1) {
            flowKt__TransformKt$runningReduce$1$1$emit$1 = (FlowKt__TransformKt$runningReduce$1$1$emit$1) continuation;
            if ((flowKt__TransformKt$runningReduce$1$1$emit$1.label & Integer.MIN_VALUE) != 0) {
                flowKt__TransformKt$runningReduce$1$1$emit$1.label -= Integer.MIN_VALUE;
            } else {
                flowKt__TransformKt$runningReduce$1$1$emit$1 = new FlowKt__TransformKt$runningReduce$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__TransformKt$runningReduce$1$1$emit$1 = new FlowKt__TransformKt$runningReduce$1$1$emit$1(this, continuation);
        }
        FlowKt__TransformKt$runningReduce$1$1$emit$1 flowKt__TransformKt$runningReduce$1$1$emit$2 = flowKt__TransformKt$runningReduce$1$1$emit$1;
        Object obj2 = flowKt__TransformKt$runningReduce$1$1$emit$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (flowKt__TransformKt$runningReduce$1$1$emit$2.label) {
            case 0:
                ResultKt.throwOnFailure(obj2);
                flowKt__TransformKt$runningReduce$1$1 = this;
                objectRef = flowKt__TransformKt$runningReduce$1$1.$accumulator;
                if (objectRef.element != NullSurrogateKt.NULL) {
                    Function3<T, T, Continuation<? super T>, Object> function3 = flowKt__TransformKt$runningReduce$1$1.$operation;
                    T t3 = flowKt__TransformKt$runningReduce$1$1.$accumulator.element;
                    flowKt__TransformKt$runningReduce$1$1$emit$2.L$0 = flowKt__TransformKt$runningReduce$1$1;
                    flowKt__TransformKt$runningReduce$1$1$emit$2.L$1 = objectRef;
                    flowKt__TransformKt$runningReduce$1$1$emit$2.label = 1;
                    Object objInvoke = function3.invoke(t3, t, flowKt__TransformKt$runningReduce$1$1$emit$2);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = objInvoke;
                    objectRef2 = objectRef;
                    flowKt__TransformKt$runningReduce$1$2 = flowKt__TransformKt$runningReduce$1$1;
                    FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$3 = flowKt__TransformKt$runningReduce$1$2;
                    objectRef = objectRef2;
                    t = (T) obj;
                    flowKt__TransformKt$runningReduce$1$1 = flowKt__TransformKt$runningReduce$1$3;
                }
                objectRef.element = t;
                flowCollector = flowKt__TransformKt$runningReduce$1$1.$this_unsafeFlow;
                t2 = flowKt__TransformKt$runningReduce$1$1.$accumulator.element;
                flowKt__TransformKt$runningReduce$1$1$emit$2.L$0 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$2.L$1 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$2.label = 2;
                if (flowCollector.emit(t2, flowKt__TransformKt$runningReduce$1$1$emit$2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 1:
                objectRef2 = (Ref.ObjectRef) flowKt__TransformKt$runningReduce$1$1$emit$2.L$1;
                FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$4 = (FlowKt__TransformKt$runningReduce$1$1) flowKt__TransformKt$runningReduce$1$1$emit$2.L$0;
                ResultKt.throwOnFailure(obj2);
                flowKt__TransformKt$runningReduce$1$2 = flowKt__TransformKt$runningReduce$1$4;
                obj = obj2;
                FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$5 = flowKt__TransformKt$runningReduce$1$2;
                objectRef = objectRef2;
                t = (T) obj;
                flowKt__TransformKt$runningReduce$1$1 = flowKt__TransformKt$runningReduce$1$5;
                objectRef.element = t;
                flowCollector = flowKt__TransformKt$runningReduce$1$1.$this_unsafeFlow;
                t2 = flowKt__TransformKt$runningReduce$1$1.$accumulator.element;
                flowKt__TransformKt$runningReduce$1$1$emit$2.L$0 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$2.L$1 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$2.label = 2;
                if (flowCollector.emit(t2, flowKt__TransformKt$runningReduce$1$1$emit$2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj2);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
