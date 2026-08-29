package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Drawable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\u00042\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "updateBounds", "", "left", "top", "right", "bottom", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class DrawableKt {
    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i, int i2, Bitmap.Config config, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = drawable.getIntrinsicWidth();
        }
        if ((i3 & 2) != 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        if ((i3 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, i, i2, config);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r0.getConfig() == r10) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.graphics.Bitmap toBitmap(android.graphics.drawable.Drawable r7, int r8, int r9, android.graphics.Bitmap.Config r10) {
        /*
            java.lang.String r0 = "$this$toBitmap"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r7, r0)
            boolean r0 = r7 instanceof android.graphics.drawable.BitmapDrawable
            java.lang.String r1 = "bitmap"
            if (r0 == 0) goto L4c
            if (r10 == 0) goto L1d
            r0 = r7
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            android.graphics.Bitmap r0 = r0.getBitmap()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            android.graphics.Bitmap$Config r0 = r0.getConfig()
            if (r0 != r10) goto L4c
        L1d:
            r0 = r7
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            int r0 = r0.getIntrinsicWidth()
            if (r8 != r0) goto L3a
            r0 = r7
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            int r0 = r0.getIntrinsicHeight()
            if (r9 != r0) goto L3a
            r0 = r7
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            android.graphics.Bitmap r0 = r0.getBitmap()
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            return r0
        L3a:
            r0 = r7
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            android.graphics.Bitmap r0 = r0.getBitmap()
            r1 = 1
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r8, r9, r1)
            java.lang.String r1 = "Bitmap.createScaledBitma…map, width, height, true)"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            return r0
        L4c:
            android.graphics.Rect r0 = r7.getBounds()
            r2 = r0
            r3 = 0
            int r2 = r2.left
            r3 = r0
            r4 = 0
            int r3 = r3.top
            r4 = r0
            r5 = 0
            int r4 = r4.right
            r5 = 0
            int r0 = r0.bottom
            if (r10 == 0) goto L65
            r5 = r10
            goto L67
        L65:
            android.graphics.Bitmap$Config r5 = android.graphics.Bitmap.Config.ARGB_8888
        L67:
            android.graphics.Bitmap r5 = android.graphics.Bitmap.createBitmap(r8, r9, r5)
            r6 = 0
            r7.setBounds(r6, r6, r8, r9)
            android.graphics.Canvas r6 = new android.graphics.Canvas
            r6.<init>(r5)
            r7.draw(r6)
            r7.setBounds(r2, r3, r4, r0)
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.DrawableKt.toBitmap(android.graphics.drawable.Drawable, int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public static /* synthetic */ void updateBounds$default(Drawable drawable, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = drawable.getBounds().left;
        }
        if ((i5 & 2) != 0) {
            i2 = drawable.getBounds().top;
        }
        if ((i5 & 4) != 0) {
            i3 = drawable.getBounds().right;
        }
        if ((i5 & 8) != 0) {
            i4 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i, i2, i3, i4);
    }

    public static final void updateBounds(Drawable updateBounds, int left, int top, int right, int bottom) {
        Intrinsics.checkParameterIsNotNull(updateBounds, "$this$updateBounds");
        updateBounds.setBounds(left, top, right, bottom);
    }
}
