package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: compiled from: Flow.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u001f\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bH¦@ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/flow/AbstractFlow;", "T", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "()V", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectSafely", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
public abstract class AbstractFlow<T> implements Flow<T>, CancellableFlow<T> {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.AbstractFlow$collect$1, reason: invalid class name */
    /* JADX INFO: compiled from: Flow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", i = {0}, l = {230}, m = "collect", n = {"safeCollector"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AbstractFlow<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AbstractFlow<T> abstractFlow, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = abstractFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.collect(null, this);
        }
    }

    public abstract Object collectSafely(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation);

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlinx.coroutines.flow.AbstractFlow, kotlinx.coroutines.flow.AbstractFlow<T>] */
    /* JADX WARN: Type inference failed for: r6v0, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowCollector<? super T>] */
    /* JADX WARN: Type inference failed for: r6v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (anonymousClass2.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    SafeCollector safeCollector = new SafeCollector(flowCollector, anonymousClass2.getContext());
                    anonymousClass2.L$0 = safeCollector;
                    anonymousClass2.label = 1;
                    Object objCollectSafely = collectSafely(safeCollector, anonymousClass2);
                    flowCollector = safeCollector;
                    if (objCollectSafely == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    SafeCollector safeCollector2 = (SafeCollector) anonymousClass2.L$0;
                    ResultKt.throwOnFailure(obj);
                    flowCollector = safeCollector2;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ((SafeCollector) flowCollector).releaseIntercepted();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            flowCollector.releaseIntercepted();
            throw th;
        }
    }
}
