package kotlinx.coroutines.flow;

import androidx.core.view.MotionEventCompat;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: compiled from: Reduce.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u001a!\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u001aE\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\t\u001a#\u0010\n\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u001aG\u0010\n\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\t\u001ay\u0010\u000b\u001a\u0002H\f\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\f*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\r\u001a\u0002H\f2H\b\u0004\u0010\u000e\u001aB\b\u0001\u0012\u0013\u0012\u0011H\f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\f0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u000fH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a!\u0010\u0015\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u001a#\u0010\u0016\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u001as\u0010\u0017\u001a\u0002H\u0018\"\u0004\b\u0000\u0010\u0018\"\b\b\u0001\u0010\u0001*\u0002H\u0018*\b\u0012\u0004\u0012\u0002H\u00010\u00022F\u0010\u000e\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0018¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00180\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u000fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a!\u0010\u001b\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u001a#\u0010\u001c\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"first", "T", "Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firstOrNull", "fold", "R", "initial", "operation", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "acc", "value", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "last", "lastOrNull", "reduce", "S", "accumulator", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "single", "singleOrNull", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
final /* synthetic */ class FlowKt__ReduceKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1, reason: invalid class name */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.first(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3, reason: invalid class name */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0, 0}, l = {183}, m = "first", n = {"predicate", "result", "collector$iv"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass3<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.first(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class C01151<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01151(Continuation<? super C01151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.firstOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class C01163<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01163(Continuation<? super C01163> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.firstOrNull(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {MotionEventCompat.AXIS_GENERIC_13}, m = "fold", n = {"accumulator"}, s = {"L$0"})
    static final class C01171<T, R> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01171(Continuation<? super C01171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt.fold(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$last$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {155}, m = "last", n = {"result"}, s = {"L$0"})
    static final class C01181<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01181(Continuation<? super C01181> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.last(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$lastOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {167}, m = "lastOrNull", n = {"result"}, s = {"L$0"})
    static final class C01201<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01201(Continuation<? super C01201> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.lastOrNull(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {MotionEventCompat.AXIS_GAS}, m = "reduce", n = {"accumulator"}, s = {"L$0"})
    static final class C01221<S, T extends S> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01221(Continuation<? super C01221> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.reduce(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$single$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {57}, m = "single", n = {"result"}, s = {"L$0"})
    static final class C01241<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01241(Continuation<? super C01241> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.single(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "singleOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    static final class C01261<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01261(Continuation<? super C01261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.singleOrNull(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r3v0, types: [T, kotlinx.coroutines.internal.Symbol] */
    public static final <S, T extends S> Object reduce(Flow<? extends T> flow, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, Continuation<? super S> continuation) throws Throwable {
        C01221 c01221;
        Ref.ObjectRef accumulator;
        if (continuation instanceof C01221) {
            c01221 = (C01221) continuation;
            if ((c01221.label & Integer.MIN_VALUE) != 0) {
                c01221.label -= Integer.MIN_VALUE;
            } else {
                c01221 = new C01221(continuation);
            }
        } else {
            c01221 = new C01221(continuation);
        }
        C01221 c01222 = c01221;
        Object $result = c01222.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01222.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.ObjectRef accumulator2 = new Ref.ObjectRef();
                accumulator2.element = NullSurrogateKt.NULL;
                FlowCollector<? super Object> c01232 = new C01232<>(accumulator2, function3);
                c01222.L$0 = accumulator2;
                c01222.label = 1;
                if (flow.collect(c01232, c01222) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                accumulator = accumulator2;
                break;
                break;
            case 1:
                accumulator = (Ref.ObjectRef) c01222.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (accumulator.element == NullSurrogateKt.NULL) {
            throw new NoSuchElementException("Empty flow can't be reduced");
        }
        return accumulator.element;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "S", "T", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    static final class C01232<T> implements FlowCollector {
        final /* synthetic */ Ref.ObjectRef<Object> $accumulator;
        final /* synthetic */ Function3<S, T, Continuation<? super S>, Object> $operation;

        /* JADX WARN: Multi-variable type inference failed */
        C01232(Ref.ObjectRef<Object> objectRef, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3) {
            this.$accumulator = objectRef;
            this.$operation = function3;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(T t, Continuation<? super Unit> continuation) throws Throwable {
            FlowKt__ReduceKt$reduce$2$emit$1 flowKt__ReduceKt$reduce$2$emit$1;
            Ref.ObjectRef<Object> objectRef;
            Object obj;
            Ref.ObjectRef<Object> objectRef2;
            if (continuation instanceof FlowKt__ReduceKt$reduce$2$emit$1) {
                flowKt__ReduceKt$reduce$2$emit$1 = (FlowKt__ReduceKt$reduce$2$emit$1) continuation;
                if ((flowKt__ReduceKt$reduce$2$emit$1.label & Integer.MIN_VALUE) != 0) {
                    flowKt__ReduceKt$reduce$2$emit$1.label -= Integer.MIN_VALUE;
                } else {
                    flowKt__ReduceKt$reduce$2$emit$1 = new FlowKt__ReduceKt$reduce$2$emit$1(this, continuation);
                }
            } else {
                flowKt__ReduceKt$reduce$2$emit$1 = new FlowKt__ReduceKt$reduce$2$emit$1(this, continuation);
            }
            FlowKt__ReduceKt$reduce$2$emit$1 flowKt__ReduceKt$reduce$2$emit$2 = flowKt__ReduceKt$reduce$2$emit$1;
            Object obj2 = flowKt__ReduceKt$reduce$2$emit$2.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (flowKt__ReduceKt$reduce$2$emit$2.label) {
                case 0:
                    ResultKt.throwOnFailure(obj2);
                    objectRef = this.$accumulator;
                    if (objectRef.element != NullSurrogateKt.NULL) {
                        Function3<S, T, Continuation<? super S>, Object> function3 = this.$operation;
                        Object obj3 = this.$accumulator.element;
                        flowKt__ReduceKt$reduce$2$emit$2.L$0 = objectRef;
                        flowKt__ReduceKt$reduce$2$emit$2.label = 1;
                        Object objInvoke = function3.invoke((S) obj3, t, flowKt__ReduceKt$reduce$2$emit$2);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj = objInvoke;
                        objectRef2 = objectRef;
                        objectRef = objectRef2;
                        t = (T) obj;
                    }
                    objectRef.element = t;
                    return Unit.INSTANCE;
                case 1:
                    objectRef2 = (Ref.ObjectRef) flowKt__ReduceKt$reduce$2$emit$2.L$0;
                    ResultKt.throwOnFailure(obj2);
                    obj = obj2;
                    objectRef = objectRef2;
                    t = (T) obj;
                    objectRef.element = t;
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> Object fold(Flow<? extends T> flow, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) throws Throwable {
        C01171 c01171;
        Ref.ObjectRef accumulator;
        if (continuation instanceof C01171) {
            c01171 = (C01171) continuation;
            if ((c01171.label & Integer.MIN_VALUE) != 0) {
                c01171.label -= Integer.MIN_VALUE;
            } else {
                c01171 = new C01171(continuation);
            }
        } else {
            c01171 = new C01171(continuation);
        }
        C01171 c01172 = c01171;
        Object $result = c01172.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01172.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.ObjectRef accumulator2 = new Ref.ObjectRef();
                accumulator2.element = r;
                FlowCollector<? super Object> anonymousClass2 = new AnonymousClass2<>(accumulator2, function3);
                c01172.L$0 = accumulator2;
                c01172.label = 1;
                if (flow.collect(anonymousClass2, c01172) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                accumulator = accumulator2;
                break;
            case 1:
                accumulator = (Ref.ObjectRef) c01172.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return accumulator.element;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2, reason: invalid class name */
    /* JADX INFO: compiled from: Reduce.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 176)
    public static final class AnonymousClass2<T> implements FlowCollector {
        final /* synthetic */ Ref.ObjectRef<R> $accumulator;
        final /* synthetic */ Function3<R, T, Continuation<? super R>, Object> $operation;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Ref.ObjectRef<R> objectRef, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
            this.$accumulator = objectRef;
            this.$operation = function3;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(T t, Continuation<? super Unit> continuation) throws Throwable {
            FlowKt__ReduceKt$fold$2$emit$1 flowKt__ReduceKt$fold$2$emit$1;
            T t2;
            Ref.ObjectRef objectRef;
            if (continuation instanceof FlowKt__ReduceKt$fold$2$emit$1) {
                flowKt__ReduceKt$fold$2$emit$1 = (FlowKt__ReduceKt$fold$2$emit$1) continuation;
                if ((flowKt__ReduceKt$fold$2$emit$1.label & Integer.MIN_VALUE) != 0) {
                    flowKt__ReduceKt$fold$2$emit$1.label -= Integer.MIN_VALUE;
                } else {
                    flowKt__ReduceKt$fold$2$emit$1 = new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
                }
            } else {
                flowKt__ReduceKt$fold$2$emit$1 = new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
            }
            FlowKt__ReduceKt$fold$2$emit$1 flowKt__ReduceKt$fold$2$emit$2 = flowKt__ReduceKt$fold$2$emit$1;
            Object obj = flowKt__ReduceKt$fold$2$emit$2.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (flowKt__ReduceKt$fold$2$emit$2.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = this.$accumulator;
                    Function3<R, T, Continuation<? super R>, Object> function3 = this.$operation;
                    T t3 = objectRef2.element;
                    flowKt__ReduceKt$fold$2$emit$2.L$0 = objectRef2;
                    flowKt__ReduceKt$fold$2$emit$2.label = 1;
                    Object objInvoke = function3.invoke((R) t3, t, flowKt__ReduceKt$fold$2$emit$2);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    t2 = (T) objInvoke;
                    objectRef = objectRef2;
                    break;
                case 1:
                    objectRef = (Ref.ObjectRef) flowKt__ReduceKt$fold$2$emit$2.L$0;
                    ResultKt.throwOnFailure(obj);
                    t2 = (T) obj;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef.element = t2;
            return Unit.INSTANCE;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object emit$$forInline(T t, Continuation<? super Unit> continuation) {
            InlineMarker.mark(4);
            new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
            InlineMarker.mark(5);
            Ref.ObjectRef<R> objectRef = this.$accumulator;
            objectRef.element = (T) this.$operation.invoke((R) objectRef.element, t, (Continuation<? super R>) continuation);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T, R> Object fold$$forInline(Flow<? extends T> flow, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) {
        Ref.ObjectRef accumulator = new Ref.ObjectRef();
        accumulator.element = r;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(accumulator, function3);
        InlineMarker.mark(0);
        flow.collect(anonymousClass2, continuation);
        InlineMarker.mark(1);
        return accumulator.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object single(Flow<? extends T> flow, Continuation<? super T> continuation) throws Throwable {
        C01241 c01241;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C01241) {
            c01241 = (C01241) continuation;
            if ((c01241.label & Integer.MIN_VALUE) != 0) {
                c01241.label -= Integer.MIN_VALUE;
            } else {
                c01241 = new C01241(continuation);
            }
        } else {
            c01241 = new C01241(continuation);
        }
        C01241 c01242 = c01241;
        Object obj = c01242.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01242.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = (T) NullSurrogateKt.NULL;
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt.single.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        if (!(objectRef2.element == NullSurrogateKt.NULL)) {
                            throw new IllegalArgumentException("Flow has more than one element".toString());
                        }
                        objectRef2.element = t;
                        return Unit.INSTANCE;
                    }
                };
                c01242.L$0 = objectRef2;
                c01242.label = 1;
                if (flow.collect(flowCollector, c01242) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
                break;
                break;
            case 1:
                objectRef = (Ref.ObjectRef) c01242.L$0;
                ResultKt.throwOnFailure(obj);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (objectRef.element == NullSurrogateKt.NULL) {
            throw new NoSuchElementException("Flow is empty");
        }
        return objectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0076 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0078  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object singleOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) throws Throwable {
        C01261 c01261;
        final Ref.ObjectRef objectRef;
        FlowCollector<T> flowCollector;
        AbortFlowException e;
        if (continuation instanceof C01261) {
            c01261 = (C01261) continuation;
            if ((c01261.label & Integer.MIN_VALUE) != 0) {
                c01261.label -= Integer.MIN_VALUE;
            } else {
                c01261 = new C01261(continuation);
            }
        } else {
            c01261 = new C01261(continuation);
        }
        C01261 c01262 = c01261;
        Object obj = c01262.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01262.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                objectRef = new Ref.ObjectRef();
                objectRef.element = (T) NullSurrogateKt.NULL;
                FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(T t, Continuation<? super Unit> continuation2) {
                        boolean z;
                        if (objectRef.element == NullSurrogateKt.NULL) {
                            objectRef.element = t;
                            z = true;
                        } else {
                            objectRef.element = (T) NullSurrogateKt.NULL;
                            z = false;
                        }
                        if (!z) {
                            throw new AbortFlowException(this);
                        }
                        return Unit.INSTANCE;
                    }
                };
                try {
                    c01262.L$0 = objectRef;
                    c01262.L$1 = flowCollector2;
                    c01262.label = 1;
                    if (flow.collect(flowCollector2, c01262) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (objectRef.element == NullSurrogateKt.NULL) {
                        return null;
                    }
                    return objectRef.element;
                } catch (AbortFlowException e2) {
                    flowCollector = flowCollector2;
                    e = e2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                }
                break;
            case 1:
                flowCollector = (FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1) c01262.L$1;
                objectRef = (Ref.ObjectRef) c01262.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    break;
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                }
                if (objectRef.element == NullSurrogateKt.NULL) {
                    return null;
                }
                return objectRef.element;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0076  */
    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object first(Flow<? extends T> flow, Continuation<? super T> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        final Ref.ObjectRef objectRef;
        FlowCollector<T> flowCollector;
        AbortFlowException e;
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
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass2.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                objectRef = new Ref.ObjectRef();
                objectRef.element = (T) NullSurrogateKt.NULL;
                FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(T t, Continuation<? super Unit> continuation2) {
                        objectRef.element = t;
                        throw new AbortFlowException(this);
                    }
                };
                try {
                    anonymousClass2.L$0 = objectRef;
                    anonymousClass2.L$1 = flowCollector2;
                    anonymousClass2.label = 1;
                    if (flow.collect(flowCollector2, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (objectRef.element != NullSurrogateKt.NULL) {
                        return objectRef.element;
                    }
                    throw new NoSuchElementException("Expected at least one element");
                } catch (AbortFlowException e2) {
                    flowCollector = flowCollector2;
                    e = e2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                }
                break;
            case 1:
                flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$1) anonymousClass2.L$1;
                objectRef = (Ref.ObjectRef) anonymousClass2.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    break;
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                    return objectRef.element;
                }
                throw new NoSuchElementException("Expected at least one element");
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object first(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        AnonymousClass3 anonymousClass3;
        Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function3;
        Ref.ObjectRef objectRef;
        FlowCollector<? super Object> flowCollector;
        AbortFlowException e;
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
        Object obj = anonymousClass4.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass4.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                function3 = function2;
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = (T) NullSurrogateKt.NULL;
                FlowCollector<? super Object> flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2<>(function3, objectRef2);
                try {
                    anonymousClass4.L$0 = function3;
                    anonymousClass4.L$1 = objectRef2;
                    anonymousClass4.L$2 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                    anonymousClass4.label = 1;
                    if (flow.collect(flowKt__ReduceKt$first$$inlined$collectWhile$2, anonymousClass4) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef = objectRef2;
                    if (objectRef.element != NullSurrogateKt.NULL) {
                        return objectRef.element;
                    }
                    throw new NoSuchElementException("Expected at least one element matching the predicate " + function3);
                } catch (AbortFlowException e2) {
                    objectRef = objectRef2;
                    flowCollector = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                    e = e2;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                }
                break;
            case 1:
                flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) anonymousClass4.L$2;
                objectRef = (Ref.ObjectRef) anonymousClass4.L$1;
                function3 = (Function2) anonymousClass4.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    break;
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                }
                if (objectRef.element != NullSurrogateKt.NULL) {
                    return objectRef.element;
                }
                throw new NoSuchElementException("Expected at least one element matching the predicate " + function3);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object firstOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) throws Throwable {
        C01151 c01151;
        final Ref.ObjectRef result;
        FlowCollector<T> flowCollector;
        AbortFlowException e$iv;
        if (continuation instanceof C01151) {
            c01151 = (C01151) continuation;
            if ((c01151.label & Integer.MIN_VALUE) != 0) {
                c01151.label -= Integer.MIN_VALUE;
            } else {
                c01151 = new C01151(continuation);
            }
        } else {
            c01151 = new C01151(continuation);
        }
        C01151 c01152 = c01151;
        Object $result = c01152.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01152.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                result = new Ref.ObjectRef();
                FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(T t, Continuation<? super Unit> continuation2) {
                        result.element = t;
                        throw new AbortFlowException(this);
                    }
                };
                try {
                    c01152.L$0 = result;
                    c01152.L$1 = flowCollector2;
                    c01152.label = 1;
                    return flow.collect(flowCollector2, c01152) == coroutine_suspended ? coroutine_suspended : result.element;
                } catch (AbortFlowException e) {
                    flowCollector = flowCollector2;
                    e$iv = e;
                    FlowExceptions_commonKt.checkOwnership(e$iv, flowCollector);
                }
                break;
            case 1:
                flowCollector = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1) c01152.L$1;
                result = (Ref.ObjectRef) c01152.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                } catch (AbortFlowException e2) {
                    e$iv = e2;
                    FlowExceptions_commonKt.checkOwnership(e$iv, flowCollector);
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object firstOrNull(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        C01163 c01163;
        Ref.ObjectRef result;
        FlowCollector<? super Object> collector$iv;
        AbortFlowException e$iv;
        if (continuation instanceof C01163) {
            c01163 = (C01163) continuation;
            if ((c01163.label & Integer.MIN_VALUE) != 0) {
                c01163.label -= Integer.MIN_VALUE;
            } else {
                c01163 = new C01163(continuation);
            }
        } else {
            c01163 = new C01163(continuation);
        }
        C01163 c01164 = c01163;
        Object $result = c01164.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01164.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Ref.ObjectRef result2 = new Ref.ObjectRef();
                FlowCollector<? super Object> collector$iv2 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2<>(function2, result2);
                try {
                    c01164.L$0 = result2;
                    c01164.L$1 = collector$iv2;
                    c01164.label = 1;
                    if (flow.collect(collector$iv2, c01164) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = result2;
                    return result.element;
                } catch (AbortFlowException e) {
                    result = result2;
                    collector$iv = collector$iv2;
                    e$iv = e;
                    FlowExceptions_commonKt.checkOwnership(e$iv, collector$iv);
                }
                break;
            case 1:
                collector$iv = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) c01164.L$1;
                result = (Ref.ObjectRef) c01164.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    break;
                } catch (AbortFlowException e2) {
                    e$iv = e2;
                    FlowExceptions_commonKt.checkOwnership(e$iv, collector$iv);
                }
                return result.element;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object last(Flow<? extends T> flow, Continuation<? super T> continuation) throws Throwable {
        C01181 c01181;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C01181) {
            c01181 = (C01181) continuation;
            if ((c01181.label & Integer.MIN_VALUE) != 0) {
                c01181.label -= Integer.MIN_VALUE;
            } else {
                c01181 = new C01181(continuation);
            }
        } else {
            c01181 = new C01181(continuation);
        }
        C01181 c01182 = c01181;
        Object obj = c01182.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01182.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = (T) NullSurrogateKt.NULL;
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt.last.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        objectRef2.element = t;
                        return Unit.INSTANCE;
                    }
                };
                c01182.L$0 = objectRef2;
                c01182.label = 1;
                if (flow.collect(flowCollector, c01182) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
                break;
                break;
            case 1:
                objectRef = (Ref.ObjectRef) c01182.L$0;
                ResultKt.throwOnFailure(obj);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (objectRef.element == NullSurrogateKt.NULL) {
            throw new NoSuchElementException("Expected at least one element");
        }
        return objectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <T> Object lastOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) throws Throwable {
        C01201 c01201;
        Ref.ObjectRef result;
        if (continuation instanceof C01201) {
            c01201 = (C01201) continuation;
            if ((c01201.label & Integer.MIN_VALUE) != 0) {
                c01201.label -= Integer.MIN_VALUE;
            } else {
                c01201 = new C01201(continuation);
            }
        } else {
            c01201 = new C01201(continuation);
        }
        C01201 c01202 = c01201;
        Object $result = c01202.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c01202.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                final Ref.ObjectRef result2 = new Ref.ObjectRef();
                FlowCollector<? super Object> flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt.lastOrNull.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(T t, Continuation<? super Unit> continuation2) {
                        result2.element = t;
                        return Unit.INSTANCE;
                    }
                };
                c01202.L$0 = result2;
                c01202.label = 1;
                if (flow.collect(flowCollector, c01202) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                result = result2;
                break;
                break;
            case 1:
                result = (Ref.ObjectRef) c01202.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return result.element;
    }
}
