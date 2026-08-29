package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Canvas.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a.\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a.\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a.\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\n2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aF\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aF\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a0\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aD\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a&\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aN\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a:\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a:\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b¨\u0006\u001e"}, d2 = {"withClip", "", "Landroid/graphics/Canvas;", "clipPath", "Landroid/graphics/Path;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "clipRect", "Landroid/graphics/Rect;", "Landroid/graphics/RectF;", "left", "", "top", "right", "bottom", "", "withMatrix", "matrix", "Landroid/graphics/Matrix;", "withRotation", "degrees", "pivotX", "pivotY", "withSave", "withScale", "x", "y", "withSkew", "withTranslation", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class CanvasKt {
    public static final void withSave(Canvas withSave, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withSave, "$this$withSave");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withSave.save();
        try {
            block.invoke(withSave);
        } finally {
            InlineMarker.finallyStart(1);
            withSave.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withTranslation$default(Canvas withTranslation, float x, float y, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            x = 0.0f;
        }
        if ((i & 2) != 0) {
            y = 0.0f;
        }
        Intrinsics.checkParameterIsNotNull(withTranslation, "$this$withTranslation");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withTranslation.save();
        withTranslation.translate(x, y);
        try {
            block.invoke(withTranslation);
        } finally {
            InlineMarker.finallyStart(1);
            withTranslation.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withTranslation(Canvas withTranslation, float x, float y, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withTranslation, "$this$withTranslation");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withTranslation.save();
        withTranslation.translate(x, y);
        try {
            block.invoke(withTranslation);
        } finally {
            InlineMarker.finallyStart(1);
            withTranslation.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withRotation$default(Canvas withRotation, float degrees, float pivotX, float pivotY, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            degrees = 0.0f;
        }
        if ((i & 2) != 0) {
            pivotX = 0.0f;
        }
        if ((i & 4) != 0) {
            pivotY = 0.0f;
        }
        Intrinsics.checkParameterIsNotNull(withRotation, "$this$withRotation");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withRotation.save();
        withRotation.rotate(degrees, pivotX, pivotY);
        try {
            block.invoke(withRotation);
        } finally {
            InlineMarker.finallyStart(1);
            withRotation.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withRotation(Canvas withRotation, float degrees, float pivotX, float pivotY, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withRotation, "$this$withRotation");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withRotation.save();
        withRotation.rotate(degrees, pivotX, pivotY);
        try {
            block.invoke(withRotation);
        } finally {
            InlineMarker.finallyStart(1);
            withRotation.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withScale$default(Canvas withScale, float x, float y, float pivotX, float pivotY, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            x = 1.0f;
        }
        if ((i & 2) != 0) {
            y = 1.0f;
        }
        if ((i & 4) != 0) {
            pivotX = 0.0f;
        }
        if ((i & 8) != 0) {
            pivotY = 0.0f;
        }
        Intrinsics.checkParameterIsNotNull(withScale, "$this$withScale");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withScale.save();
        withScale.scale(x, y, pivotX, pivotY);
        try {
            block.invoke(withScale);
        } finally {
            InlineMarker.finallyStart(1);
            withScale.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withScale(Canvas withScale, float x, float y, float pivotX, float pivotY, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withScale, "$this$withScale");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withScale.save();
        withScale.scale(x, y, pivotX, pivotY);
        try {
            block.invoke(withScale);
        } finally {
            InlineMarker.finallyStart(1);
            withScale.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withSkew$default(Canvas withSkew, float x, float y, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            x = 0.0f;
        }
        if ((i & 2) != 0) {
            y = 0.0f;
        }
        Intrinsics.checkParameterIsNotNull(withSkew, "$this$withSkew");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withSkew.save();
        withSkew.skew(x, y);
        try {
            block.invoke(withSkew);
        } finally {
            InlineMarker.finallyStart(1);
            withSkew.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withSkew(Canvas withSkew, float x, float y, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withSkew, "$this$withSkew");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withSkew.save();
        withSkew.skew(x, y);
        try {
            block.invoke(withSkew);
        } finally {
            InlineMarker.finallyStart(1);
            withSkew.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withMatrix$default(Canvas withMatrix, Matrix matrix, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = new Matrix();
        }
        Intrinsics.checkParameterIsNotNull(withMatrix, "$this$withMatrix");
        Intrinsics.checkParameterIsNotNull(matrix, "matrix");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withMatrix.save();
        withMatrix.concat(matrix);
        try {
            block.invoke(withMatrix);
        } finally {
            InlineMarker.finallyStart(1);
            withMatrix.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withMatrix(Canvas withMatrix, Matrix matrix, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withMatrix, "$this$withMatrix");
        Intrinsics.checkParameterIsNotNull(matrix, "matrix");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withMatrix.save();
        withMatrix.concat(matrix);
        try {
            block.invoke(withMatrix);
        } finally {
            InlineMarker.finallyStart(1);
            withMatrix.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(Canvas withClip, Rect clipRect, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withClip, "$this$withClip");
        Intrinsics.checkParameterIsNotNull(clipRect, "clipRect");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withClip.save();
        withClip.clipRect(clipRect);
        try {
            block.invoke(withClip);
        } finally {
            InlineMarker.finallyStart(1);
            withClip.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(Canvas withClip, RectF clipRect, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withClip, "$this$withClip");
        Intrinsics.checkParameterIsNotNull(clipRect, "clipRect");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withClip.save();
        withClip.clipRect(clipRect);
        try {
            block.invoke(withClip);
        } finally {
            InlineMarker.finallyStart(1);
            withClip.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(Canvas withClip, int left, int top, int right, int bottom, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withClip, "$this$withClip");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withClip.save();
        withClip.clipRect(left, top, right, bottom);
        try {
            block.invoke(withClip);
        } finally {
            InlineMarker.finallyStart(1);
            withClip.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(Canvas withClip, float left, float top, float right, float bottom, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withClip, "$this$withClip");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withClip.save();
        withClip.clipRect(left, top, right, bottom);
        try {
            block.invoke(withClip);
        } finally {
            InlineMarker.finallyStart(1);
            withClip.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(Canvas withClip, Path clipPath, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkParameterIsNotNull(withClip, "$this$withClip");
        Intrinsics.checkParameterIsNotNull(clipPath, "clipPath");
        Intrinsics.checkParameterIsNotNull(block, "block");
        int checkpoint = withClip.save();
        withClip.clipPath(clipPath);
        try {
            block.invoke(withClip);
        } finally {
            InlineMarker.finallyStart(1);
            withClip.restoreToCount(checkpoint);
            InlineMarker.finallyEnd(1);
        }
    }
}
