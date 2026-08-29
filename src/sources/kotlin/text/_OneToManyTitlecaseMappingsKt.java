package kotlin.text;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: _OneToManyTitlecaseMappings.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\f\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"titlecaseImpl", "", "", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class _OneToManyTitlecaseMappingsKt {
    public static final String titlecaseImpl(char $this$titlecaseImpl) {
        String strValueOf = String.valueOf($this$titlecaseImpl);
        Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String uppercase = strValueOf.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(uppercase, "toUpperCase(...)");
        if (uppercase.length() > 1) {
            if ($this$titlecaseImpl == 329) {
                return uppercase;
            }
            char cCharAt = uppercase.charAt(0);
            Intrinsics.checkNotNull(uppercase, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = uppercase.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return cCharAt + lowerCase;
        }
        return String.valueOf(Character.toTitleCase($this$titlecaseImpl));
    }
}
