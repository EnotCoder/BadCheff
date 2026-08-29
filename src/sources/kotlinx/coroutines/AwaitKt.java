package kotlinx.coroutines;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: Await.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\u001a=\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004\"\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u0004\"\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001a-\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\r\u001a\u001b\u0010\u0007\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\n0\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"awaitAll", "", "T", "deferreds", "", "Lkotlinx/coroutines/Deferred;", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinAll", "", "jobs", "Lkotlinx/coroutines/Job;", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0}, xi = 48)
public final class AwaitKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.AwaitKt$joinAll$1, reason: invalid class name */
    /* JADX INFO: compiled from: Await.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {0}, l = {54}, m = "joinAll", n = {"$this$forEach$iv"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
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
            return AwaitKt.joinAll((Job[]) null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.AwaitKt$joinAll$3, reason: invalid class name */
    /* JADX INFO: compiled from: Await.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {66}, m = "joinAll", n = {}, s = {})
    static final class AnonymousClass3 extends ContinuationImpl {
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
            return AwaitKt.joinAll((Collection<? extends Job>) null, this);
        }
    }

    public static final <T> Object awaitAll(Deferred<? extends T>[] deferredArr, Continuation<? super List<? extends T>> continuation) {
        return deferredArr.length == 0 ? CollectionsKt.emptyList() : new AwaitAll(deferredArr).await(continuation);
    }

    public static final <T> Object awaitAll(Collection<? extends Deferred<? extends T>> collection, Continuation<? super List<? extends T>> continuation) {
        if (collection.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        Object[] array = collection.toArray(new Deferred[0]);
        if (array != null) {
            return new AwaitAll((Deferred[]) array).await(continuation);
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0046  */
    /* JADX WARN: Code duplicated, block: B:17:0x0057 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0058  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0058 -> B:19:0x0059). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object joinAll(kotlinx.coroutines.Job[] r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.AwaitKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r9
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = (kotlinx.coroutines.AwaitKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = new kotlinx.coroutines.AwaitKt$joinAll$1
            r0.<init>(r9)
        L19:
            r9 = r0
            java.lang.Object r0 = r9.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.label
            r3 = 1
            switch(r2) {
                case 0: goto L3c;
                case 1: goto L2e;
                default: goto L26;
            }
        L26:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L2e:
            r8 = 0
            r2 = 0
            int r4 = r9.I$1
            int r5 = r9.I$0
            java.lang.Object r6 = r9.L$0
            kotlinx.coroutines.Job[] r6 = (kotlinx.coroutines.Job[]) r6
            kotlin.ResultKt.throwOnFailure(r0)
            goto L59
        L3c:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = 0
            int r4 = r8.length
            r5 = 0
            r6 = r8
            r8 = r2
        L44:
            if (r5 >= r4) goto L5b
            r2 = r6[r5]
            r7 = 0
            r9.L$0 = r6
            r9.I$0 = r5
            r9.I$1 = r4
            r9.label = r3
            java.lang.Object r2 = r2.join(r9)
            if (r2 != r1) goto L58
            return r1
        L58:
            r2 = r7
        L59:
            int r5 = r5 + r3
            goto L44
        L5b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.joinAll(kotlinx.coroutines.Job[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object joinAll(Collection<? extends Job> collection, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass3 anonymousClass3;
        Iterator it;
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
                Collection<? extends Job> $this$forEach$iv = collection;
                it = $this$forEach$iv.iterator();
                break;
            case 1:
                it = (Iterator) anonymousClass4.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object element$iv = it.next();
            Job it2 = (Job) element$iv;
            anonymousClass4.L$0 = it;
            anonymousClass4.label = 1;
            if (it2.join(anonymousClass4) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
