package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Delay.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/flow/FlowCollector;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {222, 355}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "timeoutMillis", "downstream", "values", "lastValue", "timeoutMillis"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
final class FlowKt__DelayKt$debounceInternal$1<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow<T> $this_debounceInternal;
    final /* synthetic */ Function1<T, Long> $timeoutMillisSelector;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__DelayKt$debounceInternal$1(Function1<? super T, Long> function1, Flow<? extends T> flow, Continuation<? super FlowKt__DelayKt$debounceInternal$1> continuation) {
        super(3, continuation);
        this.$timeoutMillisSelector = function1;
        this.$this_debounceInternal = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$debounceInternal$1 flowKt__DelayKt$debounceInternal$1 = new FlowKt__DelayKt$debounceInternal$1(this.$timeoutMillisSelector, this.$this_debounceInternal, continuation);
        flowKt__DelayKt$debounceInternal$1.L$0 = coroutineScope;
        flowKt__DelayKt$debounceInternal$1.L$1 = flowCollector;
        return flowKt__DelayKt$debounceInternal$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x007c  */
    /* JADX WARN: Code duplicated, block: B:13:0x0085  */
    /* JADX WARN: Code duplicated, block: B:15:0x008f  */
    /* JADX WARN: Code duplicated, block: B:18:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:19:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:21:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:44:0x0102  */
    /* JADX WARN: Code duplicated, block: B:49:0x0128 A[Catch: all -> 0x0144, TryCatch #0 {all -> 0x0144, blocks: (B:47:0x011f, B:49:0x0128, B:50:0x0134), top: B:63:0x011f }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0152  */
    /* JADX WARN: Code duplicated, block: B:58:0x015a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:59:0x015b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x015b -> B:60:0x015f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
