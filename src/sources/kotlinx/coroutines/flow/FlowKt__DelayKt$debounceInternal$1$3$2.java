package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: Delay.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/channels/ChannelResult;", "", "value", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {0}, l = {243}, m = "invokeSuspend", n = {"$this$onFailure_u2dWpGqRn0$iv"}, s = {"L$0"})
final class FlowKt__DelayKt$debounceInternal$1$3$2 extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super Unit>, Object> {
    final /* synthetic */ FlowCollector<T> $downstream;
    final /* synthetic */ Ref.ObjectRef<Object> $lastValue;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__DelayKt$debounceInternal$1$3$2(Ref.ObjectRef<Object> objectRef, FlowCollector<? super T> flowCollector, Continuation<? super FlowKt__DelayKt$debounceInternal$1$3$2> continuation) {
        super(2, continuation);
        this.$lastValue = objectRef;
        this.$downstream = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__DelayKt$debounceInternal$1$3$2 flowKt__DelayKt$debounceInternal$1$3$2 = new FlowKt__DelayKt$debounceInternal$1$3$2(this.$lastValue, this.$downstream, continuation);
        flowKt__DelayKt$debounceInternal$1$3$2.L$0 = obj;
        return flowKt__DelayKt$debounceInternal$1$3$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(ChannelResult<? extends Object> channelResult, Continuation<? super Unit> continuation) {
        return m1615invokeWpGqRn0(channelResult.getHolder(), continuation);
    }

    /* JADX INFO: renamed from: invoke-WpGqRn0, reason: not valid java name */
    public final Object m1615invokeWpGqRn0(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$2) create(ChannelResult.m1592boximpl(obj), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2 for r11v1 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            switch(r1) {
                case 0: goto L1e;
                case 1: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L11:
            r0 = r11
            r1 = 0
            r2 = 0
            java.lang.Object r3 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r3 = (kotlin.jvm.internal.Ref.ObjectRef) r3
            java.lang.Object r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L69
        L1e:
            kotlin.ResultKt.throwOnFailure(r12)
            r1 = r11
            java.lang.Object r2 = r1.L$0
            kotlinx.coroutines.channels.ChannelResult r2 = (kotlinx.coroutines.channels.ChannelResult) r2
            java.lang.Object r2 = r2.getHolder()
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r3 = r1.$lastValue
            r4 = 0
            boolean r5 = r2 instanceof kotlinx.coroutines.channels.ChannelResult.Failed
            if (r5 != 0) goto L37
            r5 = r2
            r6 = 0
            r3.element = r5
        L37:
            r4 = r2
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r3 = r1.$lastValue
            kotlinx.coroutines.flow.FlowCollector<T> r2 = r1.$downstream
            r5 = 0
            boolean r6 = r4 instanceof kotlinx.coroutines.channels.ChannelResult.Failed
            if (r6 == 0) goto L74
            java.lang.Throwable r6 = kotlinx.coroutines.channels.ChannelResult.m1596exceptionOrNullimpl(r4)
            r7 = 0
            if (r6 != 0) goto L71
            T r6 = r3.element
            if (r6 == 0) goto L6c
            kotlinx.coroutines.internal.Symbol r6 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
            T r8 = r3.element
            r9 = 0
            if (r8 != r6) goto L58
            r10 = 0
            r8 = r10
        L58:
            r1.L$0 = r4
            r1.L$1 = r3
            r6 = 1
            r1.label = r6
            java.lang.Object r2 = r2.emit(r8, r1)
            if (r2 != r0) goto L66
            return r0
        L66:
            r0 = r1
            r1 = r5
            r2 = r7
        L69:
            r5 = r1
            r7 = r2
            r1 = r0
        L6c:
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.NullSurrogateKt.DONE
            r3.element = r0
            goto L74
        L71:
            r0 = r6
            r2 = 0
            throw r0
        L74:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
