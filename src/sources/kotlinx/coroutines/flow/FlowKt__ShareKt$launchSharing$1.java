package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Share.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {}, l = {214, 218, 219, 225}, m = "invokeSuspend", n = {}, s = {})
final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ T $initialValue;
    final /* synthetic */ MutableSharedFlow<T> $shared;
    final /* synthetic */ SharingStarted $started;
    final /* synthetic */ Flow<T> $upstream;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__ShareKt$launchSharing$1(SharingStarted sharingStarted, Flow<? extends T> flow, MutableSharedFlow<T> mutableSharedFlow, T t, Continuation<? super FlowKt__ShareKt$launchSharing$1> continuation) {
        super(2, continuation);
        this.$started = sharingStarted;
        this.$upstream = flow;
        this.$shared = mutableSharedFlow;
        this.$initialValue = t;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0084 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        FlowKt__ShareKt$launchSharing$1 flowKt__ShareKt$launchSharing$1;
        Flow<T> flow;
        FlowCollector flowCollector;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                flowKt__ShareKt$launchSharing$1 = this;
                if (flowKt__ShareKt$launchSharing$1.$started == SharingStarted.INSTANCE.getEagerly()) {
                    Flow<T> flow2 = flowKt__ShareKt$launchSharing$1.$upstream;
                    FlowCollector flowCollector2 = flowKt__ShareKt$launchSharing$1.$shared;
                    flowKt__ShareKt$launchSharing$1.label = 1;
                    if (flow2.collect((FlowCollector<? super T>) flowCollector2, flowKt__ShareKt$launchSharing$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (flowKt__ShareKt$launchSharing$1.$started == SharingStarted.INSTANCE.getLazily()) {
                    flowKt__ShareKt$launchSharing$1.label = 2;
                    if (FlowKt.first(flowKt__ShareKt$launchSharing$1.$shared.getSubscriptionCount(), new AnonymousClass1(null), flowKt__ShareKt$launchSharing$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    flow = flowKt__ShareKt$launchSharing$1.$upstream;
                    flowCollector = flowKt__ShareKt$launchSharing$1.$shared;
                    flowKt__ShareKt$launchSharing$1.label = 3;
                    if (flow.collect((FlowCollector<? super T>) flowCollector, flowKt__ShareKt$launchSharing$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    flowKt__ShareKt$launchSharing$1.label = 4;
                    if (FlowKt.collectLatest(FlowKt.distinctUntilChanged(flowKt__ShareKt$launchSharing$1.$started.command(flowKt__ShareKt$launchSharing$1.$shared.getSubscriptionCount())), new AnonymousClass2(flowKt__ShareKt$launchSharing$1.$upstream, flowKt__ShareKt$launchSharing$1.$shared, flowKt__ShareKt$launchSharing$1.$initialValue, null), flowKt__ShareKt$launchSharing$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 2:
                flowKt__ShareKt$launchSharing$1 = this;
                ResultKt.throwOnFailure(obj);
                flow = flowKt__ShareKt$launchSharing$1.$upstream;
                flowCollector = flowKt__ShareKt$launchSharing$1.$shared;
                flowKt__ShareKt$launchSharing$1.label = 3;
                if (flow.collect((FlowCollector<? super T>) flowCollector, flowKt__ShareKt$launchSharing$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 3:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 4:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: Share.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"T", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {
        /* synthetic */ int I$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.I$0 = ((Number) obj).intValue();
            return anonymousClass1;
        }

        public final Object invoke(int i, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(Integer.valueOf(i), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Boolean> continuation) {
            return invoke(num.intValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    int it = this.I$0;
                    return Boxing.boxBoolean(it > 0);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: Share.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/flow/SharingCommand;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", i = {}, l = {227}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Unit>, Object> {
        final /* synthetic */ T $initialValue;
        final /* synthetic */ MutableSharedFlow<T> $shared;
        final /* synthetic */ Flow<T> $upstream;
        /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$WhenMappings */
        /* JADX INFO: compiled from: Share.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                iArr[SharingCommand.START.ordinal()] = 1;
                iArr[SharingCommand.STOP.ordinal()] = 2;
                iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Flow<? extends T> flow, MutableSharedFlow<T> mutableSharedFlow, T t, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$upstream = flow;
            this.$shared = mutableSharedFlow;
            this.$initialValue = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

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
        /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
            jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r3v3 boolean
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
            	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                switch(r1) {
                    case 0: goto L16;
                    case 1: goto L11;
                    default: goto L9;
                }
            L9:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L11:
                r0 = r6
                kotlin.ResultKt.throwOnFailure(r7)
                goto L54
            L16:
                kotlin.ResultKt.throwOnFailure(r7)
                r1 = r6
                java.lang.Object r2 = r1.L$0
                kotlinx.coroutines.flow.SharingCommand r2 = (kotlinx.coroutines.flow.SharingCommand) r2
                int[] r3 = kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.AnonymousClass2.WhenMappings.$EnumSwitchMapping$0
                int r2 = r2.ordinal()
                r2 = r3[r2]
                switch(r2) {
                    case 1: goto L40;
                    case 2: goto L3f;
                    case 3: goto L2b;
                    default: goto L2a;
                }
            L2a:
                goto L55
            L2b:
                T r0 = r1.$initialValue
                kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.flow.SharedFlowKt.NO_VALUE
                if (r0 != r2) goto L37
                kotlinx.coroutines.flow.MutableSharedFlow<T> r0 = r1.$shared
                r0.resetReplayCache()
                goto L55
            L37:
                kotlinx.coroutines.flow.MutableSharedFlow<T> r0 = r1.$shared
                T r2 = r1.$initialValue
                r0.tryEmit(r2)
                goto L55
            L3f:
                goto L55
            L40:
                kotlinx.coroutines.flow.Flow<T> r2 = r1.$upstream
                kotlinx.coroutines.flow.MutableSharedFlow<T> r3 = r1.$shared
                kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
                r4 = r1
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r5 = 1
                r1.label = r5
                java.lang.Object r2 = r2.collect(r3, r4)
                if (r2 != r0) goto L53
                return r0
            L53:
                r0 = r1
            L54:
                r1 = r0
            L55:
                kotlin.Unit r0 = kotlin.Unit.INSTANCE
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
