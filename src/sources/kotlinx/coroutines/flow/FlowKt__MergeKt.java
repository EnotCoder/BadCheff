package kotlinx.coroutines.flow;

import com.google.android.vending.expansion.downloader.impl.DownloaderService;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.ChannelFlowMerge;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import kotlinx.coroutines.internal.SystemPropsKt;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a7\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u000b0\n\"\u0004\b\u0000\u0010\u000b2\u001e\u0010\f\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u000b0\n0\r\"\b\u0012\u0004\u0012\u0002H\u000b0\n¢\u0006\u0002\u0010\u000e\u001ae\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00100\n\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u000b0\n27\u0010\u0011\u001a3\b\u0001\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\n0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0012H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001ah\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00100\n\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u000b0\n29\b\u0005\u0010\u0011\u001a3\b\u0001\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\n0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0012H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001ao\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00100\n\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u000b0\n2\b\b\u0002\u0010\u001b\u001a\u00020\u000127\u0010\u0011\u001a3\b\u0001\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\n0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0012H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a$\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u000b0\n\"\u0004\b\u0000\u0010\u000b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\n0\nH\u0007\u001a.\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u000b0\n\"\u0004\b\u0000\u0010\u000b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\n0\n2\b\b\u0002\u0010\u001b\u001a\u00020\u0001H\u0007\u001aa\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00100\n\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u000b0\n23\b\u0001\u0010\u0011\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0012H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001a\"\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u000b0\n\"\u0004\b\u0000\u0010\u000b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\n0 \u001ar\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u00100\n\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u000b0\n2D\b\u0001\u0010\u0011\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100#\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\"¢\u0006\u0002\b%H\u0007ø\u0001\u0000¢\u0006\u0002\u0010&\"\u001c\u0010\u0000\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"DEFAULT_CONCURRENCY", "", "getDEFAULT_CONCURRENCY$annotations", "()V", "getDEFAULT_CONCURRENCY", "()I", "DEFAULT_CONCURRENCY_PROPERTY_NAME", "", "getDEFAULT_CONCURRENCY_PROPERTY_NAME$annotations", "merge", "Lkotlinx/coroutines/flow/Flow;", "T", "flows", "", "([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;", "flatMapConcat", "R", "transform", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "flatMapLatest", "flatMapMerge", "concurrency", "(Lkotlinx/coroutines/flow/Flow;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "flattenConcat", "flattenMerge", "mapLatest", "", "transformLatest", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
final /* synthetic */ class FlowKt__MergeKt {
    private static final int DEFAULT_CONCURRENCY = SystemPropsKt.systemProp(FlowKt.DEFAULT_CONCURRENCY_PROPERTY_NAME, 16, 1, Integer.MAX_VALUE);

    public static /* synthetic */ void getDEFAULT_CONCURRENCY$annotations() {
    }

    public static /* synthetic */ void getDEFAULT_CONCURRENCY_PROPERTY_NAME$annotations() {
    }

    public static final int getDEFAULT_CONCURRENCY() {
        return DEFAULT_CONCURRENCY;
    }

    public static final <T, R> Flow<R> flatMapConcat(final Flow<? extends T> flow, final Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        return FlowKt.flattenConcat(new Flow<Flow<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 6, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ Function2 $transform$inlined;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
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
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Function2 function2) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$transform$inlined = function2;
                }

                /* JADX WARN: Code duplicated, block: B:20:0x005f A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:21:0x0060  */
                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    int i;
                    Object objInvoke;
                    FlowCollector flowCollector;
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
                    Object obj2 = anonymousClass2.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (anonymousClass2.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector2 = this.$this_unsafeFlow;
                            i = 0;
                            Function2 function2 = this.$transform$inlined;
                            anonymousClass2.L$0 = flowCollector2;
                            anonymousClass2.label = 1;
                            objInvoke = function2.invoke(obj, anonymousClass2);
                            if (objInvoke == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            flowCollector = flowCollector2;
                            anonymousClass2.L$0 = null;
                            anonymousClass2.label = 2;
                            if (flowCollector.emit(objInvoke, anonymousClass2) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 1:
                            FlowCollector flowCollector3 = (FlowCollector) anonymousClass2.L$0;
                            ResultKt.throwOnFailure(obj2);
                            i = 0;
                            objInvoke = obj2;
                            flowCollector = flowCollector3;
                            anonymousClass2.L$0 = null;
                            anonymousClass2.label = 2;
                            if (flowCollector.emit(objInvoke, anonymousClass2) == coroutine_suspended) {
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

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector collector, Continuation $completion) {
                Object objCollect = flow.collect(new AnonymousClass2(collector, function2), $completion);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        });
    }

    public static /* synthetic */ Flow flatMapMerge$default(Flow flow, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = DEFAULT_CONCURRENCY;
        }
        return FlowKt.flatMapMerge(flow, i, function2);
    }

    public static final <T, R> Flow<R> flatMapMerge(final Flow<? extends T> flow, int concurrency, final Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        return FlowKt.flattenMerge(new Flow<Flow<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 6, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ Function2 $transform$inlined;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {223, 223}, m = "emit", n = {}, s = {})
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
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Function2 function2) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$transform$inlined = function2;
                }

                /* JADX WARN: Code duplicated, block: B:20:0x005f A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:21:0x0060  */
                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    int i;
                    Object objInvoke;
                    FlowCollector flowCollector;
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
                    Object obj2 = anonymousClass2.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (anonymousClass2.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector2 = this.$this_unsafeFlow;
                            i = 0;
                            Function2 function2 = this.$transform$inlined;
                            anonymousClass2.L$0 = flowCollector2;
                            anonymousClass2.label = 1;
                            objInvoke = function2.invoke(obj, anonymousClass2);
                            if (objInvoke == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            flowCollector = flowCollector2;
                            anonymousClass2.L$0 = null;
                            anonymousClass2.label = 2;
                            if (flowCollector.emit(objInvoke, anonymousClass2) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 1:
                            FlowCollector flowCollector3 = (FlowCollector) anonymousClass2.L$0;
                            ResultKt.throwOnFailure(obj2);
                            i = 0;
                            objInvoke = obj2;
                            flowCollector = flowCollector3;
                            anonymousClass2.L$0 = null;
                            anonymousClass2.label = 2;
                            if (flowCollector.emit(objInvoke, anonymousClass2) == coroutine_suspended) {
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

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector collector, Continuation $completion) {
                Object objCollect = flow.collect(new AnonymousClass2(collector, function2), $completion);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, concurrency);
    }

    public static final <T> Flow<T> flattenConcat(final Flow<? extends Flow<? extends T>> flow) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
                Object objCollect = flow.collect(new FlowKt__MergeKt$flattenConcat$1$1(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    public static final <T> Flow<T> merge(Iterable<? extends Flow<? extends T>> iterable) {
        return new ChannelLimitedFlowMerge(iterable, null, 0, null, 14, null);
    }

    public static final <T> Flow<T> merge(Flow<? extends T>... flowArr) {
        return FlowKt.merge(ArraysKt.asIterable(flowArr));
    }

    public static /* synthetic */ Flow flattenMerge$default(Flow flow, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = DEFAULT_CONCURRENCY;
        }
        return FlowKt.flattenMerge(flow, i);
    }

    public static final <T> Flow<T> flattenMerge(Flow<? extends Flow<? extends T>> flow, int concurrency) {
        if (concurrency > 0) {
            return concurrency == 1 ? FlowKt.flattenConcat(flow) : new ChannelFlowMerge(flow, concurrency, null, 0, null, 28, null);
        }
        throw new IllegalArgumentException(("Expected positive concurrency level, but had " + concurrency).toString());
    }

    public static final <T, R> Flow<R> transformLatest(Flow<? extends T> flow, Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new ChannelFlowTransformLatest(function3, flow, null, 0, null, 28, null);
    }

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1, reason: invalid class name */
    /* JADX INFO: compiled from: Merge.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1", f = "Merge.kt", i = {}, l = {DownloaderService.STATUS_PENDING, DownloaderService.STATUS_PENDING}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1<R, T> extends SuspendLambda implements Function3<FlowCollector<? super R>, T, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<T, Continuation<? super Flow<? extends R>>, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.$transform = function2;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super R> flowCollector, T t, Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, continuation);
            anonymousClass1.L$0 = flowCollector;
            anonymousClass1.L$1 = t;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1<R, T> for r7v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                switch(r1) {
                    case 0: goto L22;
                    case 1: goto L16;
                    case 2: goto L11;
                    default: goto L9;
                }
            L9:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L11:
                r0 = r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L53
            L16:
                r1 = r7
                java.lang.Object r2 = r1.L$0
                kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
                kotlin.ResultKt.throwOnFailure(r8)
                r3 = r2
                r2 = r1
                r1 = r8
                goto L3f
            L22:
                kotlin.ResultKt.throwOnFailure(r8)
                r1 = r7
                java.lang.Object r2 = r1.L$0
                kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
                java.lang.Object r3 = r1.L$1
                kotlin.jvm.functions.Function2<T, kotlin.coroutines.Continuation<? super kotlinx.coroutines.flow.Flow<? extends R>>, java.lang.Object> r4 = r1.$transform
                r1.L$0 = r2
                r5 = 1
                r1.label = r5
                java.lang.Object r3 = r4.invoke(r3, r1)
                if (r3 != r0) goto L3a
                return r0
            L3a:
                r6 = r1
                r1 = r8
                r8 = r3
                r3 = r2
                r2 = r6
            L3f:
                kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8
                r4 = r2
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r5 = 0
                r2.L$0 = r5
                r5 = 2
                r2.label = r5
                java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.emitAll(r3, r8, r4)
                if (r8 != r0) goto L51
                return r0
            L51:
                r8 = r1
                r0 = r2
            L53:
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1<R, T> for r5v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = r5.L$0
                kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
                java.lang.Object r1 = r5.L$1
                kotlin.jvm.functions.Function2<T, kotlin.coroutines.Continuation<? super kotlinx.coroutines.flow.Flow<? extends R>>, java.lang.Object> r2 = r5.$transform
                java.lang.Object r2 = r2.invoke(r1, r5)
                kotlinx.coroutines.flow.Flow r2 = (kotlinx.coroutines.flow.Flow) r2
                r3 = r5
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r4 = 0
                kotlin.jvm.internal.InlineMarker.mark(r4)
                kotlinx.coroutines.flow.FlowKt.emitAll(r0, r2, r3)
                r2 = 1
                kotlin.jvm.internal.InlineMarker.mark(r2)
                kotlin.Unit r2 = kotlin.Unit.INSTANCE
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt.AnonymousClass1.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
        }
    }

    public static final <T, R> Flow<R> flatMapLatest(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        return FlowKt.transformLatest(flow, new AnonymousClass1(function2, null));
    }

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Merge.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", i = {}, l = {214, 214}, m = "invokeSuspend", n = {}, s = {})
    static final class C01121<R, T> extends SuspendLambda implements Function3<FlowCollector<? super R>, T, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<T, Continuation<? super R>, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C01121(Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super C01121> continuation) {
            super(3, continuation);
            this.$transform = function2;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super R> flowCollector, T t, Continuation<? super Unit> continuation) {
            C01121 c01121 = new C01121(this.$transform, continuation);
            c01121.L$0 = flowCollector;
            c01121.L$1 = t;
            return c01121.invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1<R, T> for r7v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                switch(r1) {
                    case 0: goto L22;
                    case 1: goto L16;
                    case 2: goto L11;
                    default: goto L9;
                }
            L9:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L11:
                r0 = r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L51
            L16:
                r1 = r7
                java.lang.Object r2 = r1.L$0
                kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
                kotlin.ResultKt.throwOnFailure(r8)
                r3 = r2
                r2 = r1
                r1 = r8
                goto L3f
            L22:
                kotlin.ResultKt.throwOnFailure(r8)
                r1 = r7
                java.lang.Object r2 = r1.L$0
                kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
                java.lang.Object r3 = r1.L$1
                kotlin.jvm.functions.Function2<T, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r4 = r1.$transform
                r1.L$0 = r2
                r5 = 1
                r1.label = r5
                java.lang.Object r3 = r4.invoke(r3, r1)
                if (r3 != r0) goto L3a
                return r0
            L3a:
                r6 = r1
                r1 = r8
                r8 = r3
                r3 = r2
                r2 = r6
            L3f:
                r4 = r2
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r5 = 0
                r2.L$0 = r5
                r5 = 2
                r2.label = r5
                java.lang.Object r8 = r3.emit(r8, r4)
                if (r8 != r0) goto L4f
                return r0
            L4f:
                r8 = r1
                r0 = r2
            L51:
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt.C01121.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <T, R> Flow<R> mapLatest(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt.transformLatest(flow, new C01121(function2, null));
    }
}
