package androidx.activity;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: compiled from: FullyDrawnReporter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"reportWhenComplete", "", "Landroidx/activity/FullyDrawnReporter;", "reporter", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class FullyDrawnReporterKt {

    /* JADX INFO: renamed from: androidx.activity.FullyDrawnReporterKt$reportWhenComplete$1, reason: invalid class name */
    /* JADX INFO: compiled from: FullyDrawnReporter.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
    @DebugMetadata(c = "androidx.activity.FullyDrawnReporterKt", f = "FullyDrawnReporter.kt", i = {0}, l = {185}, m = "reportWhenComplete", n = {"$this$reportWhenComplete"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
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
            return FullyDrawnReporterKt.reportWhenComplete(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object reportWhenComplete(FullyDrawnReporter $this$reportWhenComplete, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FullyDrawnReporter $this$reportWhenComplete2;
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
                $this$reportWhenComplete.addReporter();
                if ($this$reportWhenComplete.isFullyDrawnReported()) {
                    return Unit.INSTANCE;
                }
                try {
                    anonymousClass2.L$0 = $this$reportWhenComplete;
                    anonymousClass2.label = 1;
                    if (function1.invoke(anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $this$reportWhenComplete2 = $this$reportWhenComplete;
                    InlineMarker.finallyStart(1);
                    $this$reportWhenComplete2.removeReporter();
                    InlineMarker.finallyEnd(1);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    $this$reportWhenComplete2 = $this$reportWhenComplete;
                    InlineMarker.finallyStart(1);
                    $this$reportWhenComplete2.removeReporter();
                    InlineMarker.finallyEnd(1);
                    throw th;
                }
            case 1:
                $this$reportWhenComplete2 = (FullyDrawnReporter) anonymousClass2.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    InlineMarker.finallyStart(1);
                    $this$reportWhenComplete2.removeReporter();
                    InlineMarker.finallyEnd(1);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    InlineMarker.finallyStart(1);
                    $this$reportWhenComplete2.removeReporter();
                    InlineMarker.finallyEnd(1);
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private static final Object reportWhenComplete$$forInline(FullyDrawnReporter $this$reportWhenComplete, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        $this$reportWhenComplete.addReporter();
        if ($this$reportWhenComplete.isFullyDrawnReported()) {
            return Unit.INSTANCE;
        }
        try {
            function1.invoke(continuation);
            return Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            $this$reportWhenComplete.removeReporter();
            InlineMarker.finallyEnd(1);
        }
    }
}
