package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: Count.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a!\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001aE\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0005\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"count", "", "T", "Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
final /* synthetic */ class FlowKt__CountKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__CountKt$count$1, reason: invalid class name */
    /* JADX INFO: compiled from: Count.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {18}, m = "count", n = {"i"}, s = {"L$0"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.count(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__CountKt$count$3, reason: invalid class name */
    /* JADX INFO: compiled from: Count.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {30}, m = "count", n = {"i"}, s = {"L$0"})
    static final class AnonymousClass3<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.count(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object count(Flow<? extends T> flow, Continuation<? super Integer> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Ref.IntRef i;
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
                final Ref.IntRef i2 = new Ref.IntRef();
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__CountKt.count.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        i2.element++;
                        int i3 = i2.element;
                        return Unit.INSTANCE;
                    }
                };
                anonymousClass2.L$0 = i2;
                anonymousClass2.label = 1;
                if (flow.collect(flowCollector, anonymousClass2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = i2;
                break;
                break;
            case 1:
                i = (Ref.IntRef) anonymousClass2.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Boxing.boxInt(i.element);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object count(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Integer> continuation) throws Throwable {
        AnonymousClass3 anonymousClass3;
        Ref.IntRef i;
        if (continuation instanceof AnonymousClass3) {
            anonymousClass3 = (AnonymousClass3) continuation;
            if ((anonymousClass3.label & Integer.MIN_VALUE) != 0) {
                anonymousClass3.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass3 = new AnonymousClass3(continuation);
            }
        } else {
            anonymousClass3 = new AnonymousClass3(continuation);
        }
        AnonymousClass3 anonymousClass4 = anonymousClass3;
        Object $result = anonymousClass4.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass4.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.IntRef i2 = new Ref.IntRef();
                FlowCollector<? super Object> anonymousClass5 = new AnonymousClass4<>(function2, i2);
                anonymousClass4.L$0 = i2;
                anonymousClass4.label = 1;
                if (flow.collect(anonymousClass5, anonymousClass4) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = i2;
                break;
                break;
            case 1:
                i = (Ref.IntRef) anonymousClass4.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Boxing.boxInt(i.element);
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__CountKt$count$4, reason: invalid class name */
    /* JADX INFO: compiled from: Count.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    static final class AnonymousClass4<T> implements FlowCollector {
        final /* synthetic */ Ref.IntRef $i;
        final /* synthetic */ Function2<T, Continuation<? super Boolean>, Object> $predicate;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Ref.IntRef intRef) {
            this.$predicate = function2;
            this.$i = intRef;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(T t, Continuation<? super Unit> continuation) throws Throwable {
            FlowKt__CountKt$count$4$emit$1 flowKt__CountKt$count$4$emit$1;
            AnonymousClass4<T> anonymousClass4;
            Object value;
            if (continuation instanceof FlowKt__CountKt$count$4$emit$1) {
                flowKt__CountKt$count$4$emit$1 = (FlowKt__CountKt$count$4$emit$1) continuation;
                if ((flowKt__CountKt$count$4$emit$1.label & Integer.MIN_VALUE) != 0) {
                    flowKt__CountKt$count$4$emit$1.label -= Integer.MIN_VALUE;
                } else {
                    flowKt__CountKt$count$4$emit$1 = new FlowKt__CountKt$count$4$emit$1(this, continuation);
                }
            } else {
                flowKt__CountKt$count$4$emit$1 = new FlowKt__CountKt$count$4$emit$1(this, continuation);
            }
            FlowKt__CountKt$count$4$emit$1 flowKt__CountKt$count$4$emit$2 = flowKt__CountKt$count$4$emit$1;
            Object $result = flowKt__CountKt$count$4$emit$2.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (flowKt__CountKt$count$4$emit$2.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    anonymousClass4 = this;
                    Function2<T, Continuation<? super Boolean>, Object> function2 = anonymousClass4.$predicate;
                    flowKt__CountKt$count$4$emit$2.L$0 = anonymousClass4;
                    flowKt__CountKt$count$4$emit$2.label = 1;
                    value = function2.invoke(t, flowKt__CountKt$count$4$emit$2);
                    if (value == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    AnonymousClass4<T> anonymousClass5 = (AnonymousClass4) flowKt__CountKt$count$4$emit$2.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass4 = anonymousClass5;
                    value = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            if (((Boolean) value).booleanValue()) {
                anonymousClass4.$i.element++;
                int i = anonymousClass4.$i.element;
            }
            return Unit.INSTANCE;
        }
    }
}
