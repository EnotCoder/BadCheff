package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import com.google.android.vending.expansion.downloader.DownloaderServiceMarshaller;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Html.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086\b\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0004H\u0086\b¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", DownloaderServiceMarshaller.PARAMS_FLAGS, "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class HtmlKt {
    public static /* synthetic */ Spanned parseAsHtml$default(String parseAsHtml, int flags, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i, Object obj) {
        if ((i & 1) != 0) {
            flags = 0;
        }
        if ((i & 2) != 0) {
            imageGetter = (Html.ImageGetter) null;
        }
        if ((i & 4) != 0) {
            tagHandler = (Html.TagHandler) null;
        }
        Intrinsics.checkParameterIsNotNull(parseAsHtml, "$this$parseAsHtml");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(parseAsHtml, flags, imageGetter, tagHandler);
        Intrinsics.checkExpressionValueIsNotNull(spannedFromHtml, "HtmlCompat.fromHtml(this… imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static final Spanned parseAsHtml(String parseAsHtml, int flags, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        Intrinsics.checkParameterIsNotNull(parseAsHtml, "$this$parseAsHtml");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(parseAsHtml, flags, imageGetter, tagHandler);
        Intrinsics.checkExpressionValueIsNotNull(spannedFromHtml, "HtmlCompat.fromHtml(this… imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static /* synthetic */ String toHtml$default(Spanned toHtml, int option, int i, Object obj) {
        if ((i & 1) != 0) {
            option = 0;
        }
        Intrinsics.checkParameterIsNotNull(toHtml, "$this$toHtml");
        String html = HtmlCompat.toHtml(toHtml, option);
        Intrinsics.checkExpressionValueIsNotNull(html, "HtmlCompat.toHtml(this, option)");
        return html;
    }

    public static final String toHtml(Spanned toHtml, int option) {
        Intrinsics.checkParameterIsNotNull(toHtml, "$this$toHtml");
        String html = HtmlCompat.toHtml(toHtml, option);
        Intrinsics.checkExpressionValueIsNotNull(html, "HtmlCompat.toHtml(this, option)");
        return html;
    }
}
