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
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SafeCollector.common.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function2 $action$inlined;
    final /* synthetic */ Flow $this_onEmpty$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: SafeCollector.common.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 0, 1}, l = {114, 122}, m = "collect", n = {"this", "$this$onEmpty_u24lambda_u2d3", "isEmpty", "collector"}, s = {"L$0", "L$1", "L$2", "L$0"})
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0077  */
    /* JADX WARN: Code duplicated, block: B:26:0x009c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x009d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1<T> flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
        FlowCollector<? super T> flowCollector2;
        Ref.BooleanRef isEmpty;
        SafeCollector collector;
        Throwable th;
        SafeCollector collector2;
        Object objInvoke;
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
                flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1 = this;
                flowCollector2 = flowCollector;
                isEmpty = new Ref.BooleanRef();
                isEmpty.element = true;
                Flow flow = flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.$this_onEmpty$inlined;
                FlowKt__EmittersKt$onEmpty$1$1 flowKt__EmittersKt$onEmpty$1$1 = new FlowKt__EmittersKt$onEmpty$1$1(isEmpty, flowCollector2);
                anonymousClass2.L$0 = flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
                anonymousClass2.L$1 = flowCollector2;
                anonymousClass2.L$2 = isEmpty;
                anonymousClass2.label = 1;
                if (flow.collect(flowKt__EmittersKt$onEmpty$1$1, anonymousClass2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (isEmpty.element) {
                    collector = new SafeCollector(flowCollector2, anonymousClass2.getContext());
                    try {
                        Function2 function2 = flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.$action$inlined;
                        anonymousClass2.L$0 = collector;
                        anonymousClass2.L$1 = null;
                        anonymousClass2.L$2 = null;
                        anonymousClass2.label = 2;
                        InlineMarker.mark(6);
                        objInvoke = function2.invoke(collector, anonymousClass2);
                        InlineMarker.mark(7);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        collector2 = collector;
                        collector2.releaseIntercepted();
                    } catch (Throwable th2) {
                        th = th2;
                        collector2 = collector;
                        collector2.releaseIntercepted();
                        throw th;
                    }
                }
                return Unit.INSTANCE;
            case 1:
                isEmpty = (Ref.BooleanRef) anonymousClass2.L$2;
                flowCollector2 = (FlowCollector) anonymousClass2.L$1;
                flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1) anonymousClass2.L$0;
                ResultKt.throwOnFailure($result);
                if (isEmpty.element) {
                    collector = new SafeCollector(flowCollector2, anonymousClass2.getContext());
                    Function2 function3 = flowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.$action$inlined;
                    anonymousClass2.L$0 = collector;
                    anonymousClass2.L$1 = null;
                    anonymousClass2.L$2 = null;
                    anonymousClass2.label = 2;
                    InlineMarker.mark(6);
                    objInvoke = function3.invoke(collector, anonymousClass2);
                    InlineMarker.mark(7);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    collector2 = collector;
                    collector2.releaseIntercepted();
                }
                return Unit.INSTANCE;
            case 2:
                collector2 = (SafeCollector) anonymousClass2.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    collector2.releaseIntercepted();
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    collector2.releaseIntercepted();
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1(Flow flow, Function2 function2) {
        this.$this_onEmpty$inlined = flow;
        this.$action$inlined = function2;
    }
}
