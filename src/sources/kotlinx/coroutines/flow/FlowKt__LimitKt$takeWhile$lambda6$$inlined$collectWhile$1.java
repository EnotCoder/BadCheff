package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1, reason: invalid class name */
/* JADX INFO: compiled from: Limit.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1<T> implements FlowCollector<T> {
    final /* synthetic */ Function2 $predicate$inlined;
    final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: Limit.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1", f = "Limit.kt", i = {0, 0, 1}, l = {142, 143}, m = "emit", n = {"this", "value", "this"}, s = {"L$0", "L$1", "L$0"})
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.this.emit(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1(Function2 function2, FlowCollector flowCollector) {
        this.$predicate$inlined = function2;
        this.$this_unsafeFlow$inlined = flowCollector;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0070  */
    /* JADX WARN: Code duplicated, block: B:22:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0081  */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:30:0x008b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1<T> flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1;
        Object objInvoke;
        Object value;
        FlowCollector flowCollector;
        FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1<T> flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2;
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
        boolean z = true;
        switch (anonymousClass2.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1 = this;
                Function2 function2 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.$predicate$inlined;
                anonymousClass2.L$0 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1;
                anonymousClass2.L$1 = t;
                anonymousClass2.label = 1;
                InlineMarker.mark(6);
                objInvoke = function2.invoke(t, anonymousClass2);
                InlineMarker.mark(7);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                value = t;
                if (((Boolean) objInvoke).booleanValue()) {
                    flowCollector = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.$this_unsafeFlow$inlined;
                    anonymousClass2.L$0 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1;
                    anonymousClass2.L$1 = null;
                    anonymousClass2.label = 2;
                    if (flowCollector.emit(value, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1;
                    flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2;
                } else {
                    z = false;
                }
                if (z) {
                    return Unit.INSTANCE;
                }
                throw new AbortFlowException(flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1);
            case 1:
                Object value2 = anonymousClass2.L$1;
                FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1<T> flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$3 = (FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1) anonymousClass2.L$0;
                ResultKt.throwOnFailure($result);
                objInvoke = $result;
                value = value2;
                flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$3;
                if (((Boolean) objInvoke).booleanValue()) {
                    flowCollector = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.$this_unsafeFlow$inlined;
                    anonymousClass2.L$0 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1;
                    anonymousClass2.L$1 = null;
                    anonymousClass2.label = 2;
                    if (flowCollector.emit(value, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1;
                    flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2;
                } else {
                    z = false;
                }
                if (z) {
                    return Unit.INSTANCE;
                }
                throw new AbortFlowException(flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1);
            case 2:
                flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2 = (FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1) anonymousClass2.L$0;
                ResultKt.throwOnFailure($result);
                flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$2;
                if (z) {
                    return Unit.INSTANCE;
                }
                throw new AbortFlowException(flowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
