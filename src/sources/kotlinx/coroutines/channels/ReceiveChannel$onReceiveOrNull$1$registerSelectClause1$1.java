package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [R, E] */
/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001 \u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"R", "E", "Lkotlinx/coroutines/channels/ChannelResult;", "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1", f = "Channel.kt", i = {}, l = {375}, m = "invokeSuspend", n = {}, s = {})
final class ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1<E, R> extends SuspendLambda implements Function2<ChannelResult<? extends E>, Continuation<? super R>, Object> {
    final /* synthetic */ Function2<E, Continuation<? super R>, Object> $block;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1(Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1> continuation) {
        super(2, continuation);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1 receiveChannel$onReceiveOrNull$1$registerSelectClause1$1 = new ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1(this.$block, continuation);
        receiveChannel$onReceiveOrNull$1$registerSelectClause1$1.L$0 = obj;
        return receiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return m1608invokeWpGqRn0(((ChannelResult) obj).getHolder(), (Continuation) obj2);
    }

    /* JADX INFO: renamed from: invoke-WpGqRn0, reason: not valid java name */
    public final Object m1608invokeWpGqRn0(Object obj, Continuation<? super R> continuation) {
        return ((ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1) create(ChannelResult.m1592boximpl(obj), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1<E, R> for r6v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            switch(r1) {
                case 0: goto L17;
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
            r2 = r7
            goto L3a
        L17:
            kotlin.ResultKt.throwOnFailure(r7)
            r1 = r6
            java.lang.Object r2 = r1.L$0
            kotlinx.coroutines.channels.ChannelResult r2 = (kotlinx.coroutines.channels.ChannelResult) r2
            java.lang.Object r2 = r2.getHolder()
            java.lang.Throwable r3 = kotlinx.coroutines.channels.ChannelResult.m1596exceptionOrNullimpl(r2)
            if (r3 != 0) goto L3b
            kotlin.jvm.functions.Function2<E, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r3 = r1.$block
            java.lang.Object r4 = kotlinx.coroutines.channels.ChannelResult.m1597getOrNullimpl(r2)
            r5 = 1
            r1.label = r5
            java.lang.Object r2 = r3.invoke(r4, r1)
            if (r2 != r0) goto L39
            return r0
        L39:
            r0 = r1
        L3a:
            return r2
        L3b:
            r0 = r3
            r2 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
