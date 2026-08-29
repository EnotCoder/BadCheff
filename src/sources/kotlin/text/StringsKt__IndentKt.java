package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Indent.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\f\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0016\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002H\u0007¨\u0006\u0015"}, d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, k = 5, mv = {1, 9, 0}, xi = 49, xs = "kotlin/text/StringsKt")
public class StringsKt__IndentKt extends StringsKt__AppendableKt {
    public static /* synthetic */ String trimMargin$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return StringsKt.trimMargin(str, str2);
    }

    public static final String trimMargin(String $this$trimMargin, String marginPrefix) {
        Intrinsics.checkNotNullParameter($this$trimMargin, "<this>");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        return StringsKt.replaceIndentByMargin($this$trimMargin, "", marginPrefix);
    }

    public static /* synthetic */ String replaceIndentByMargin$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            str3 = "|";
        }
        return StringsKt.replaceIndentByMargin(str, str2, str3);
    }

    public static final String replaceIndentByMargin(String $this$replaceIndentByMargin, String newIndent, String marginPrefix) {
        Collection destination$iv$iv$iv;
        String strSubstring;
        Intrinsics.checkNotNullParameter($this$replaceIndentByMargin, "<this>");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        if (!(!StringsKt.isBlank(marginPrefix))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List<String> listLines = StringsKt.lines($this$replaceIndentByMargin);
        int resultSizeEstimate$iv = $this$replaceIndentByMargin.length() + (newIndent.length() * listLines.size());
        Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(newIndent);
        int lastIndex$iv = CollectionsKt.getLastIndex(listLines);
        List<String> $this$mapIndexedNotNull$iv$iv = listLines;
        Collection destination$iv$iv$iv2 = new ArrayList();
        int index$iv$iv$iv$iv = 0;
        for (Object item$iv$iv$iv$iv : $this$mapIndexedNotNull$iv$iv) {
            int index$iv$iv$iv$iv2 = index$iv$iv$iv$iv + 1;
            if (index$iv$iv$iv$iv < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            int index$iv$iv$iv = index$iv$iv$iv$iv;
            String value$iv = (String) item$iv$iv$iv$iv;
            String strInvoke = null;
            if ((index$iv$iv$iv == 0 || index$iv$iv$iv == lastIndex$iv) && StringsKt.isBlank(value$iv)) {
                destination$iv$iv$iv = destination$iv$iv$iv2;
            } else {
                String $this$indexOfFirst$iv = value$iv;
                int $i$f$indexOfFirst = 0;
                int index$iv = 0;
                int length = $this$indexOfFirst$iv.length();
                while (true) {
                    int $i$f$indexOfFirst2 = $i$f$indexOfFirst;
                    if (index$iv >= length) {
                        index$iv = -1;
                        break;
                    }
                    char it = $this$indexOfFirst$iv.charAt(index$iv);
                    if (!CharsKt.isWhitespace(it)) {
                        break;
                    }
                    index$iv++;
                    $i$f$indexOfFirst = $i$f$indexOfFirst2;
                }
                int firstNonWhitespaceIndex = index$iv;
                if (firstNonWhitespaceIndex == -1) {
                    destination$iv$iv$iv = destination$iv$iv$iv2;
                    strSubstring = null;
                } else {
                    destination$iv$iv$iv = destination$iv$iv$iv2;
                    if (StringsKt.startsWith$default(value$iv, marginPrefix, firstNonWhitespaceIndex, false, 4, (Object) null)) {
                        int length2 = marginPrefix.length() + firstNonWhitespaceIndex;
                        Intrinsics.checkNotNull(value$iv, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = value$iv.substring(length2);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    } else {
                        strSubstring = null;
                    }
                }
                if (strSubstring == null || (strInvoke = indentFunction$StringsKt__IndentKt.invoke(strSubstring)) == null) {
                    strInvoke = value$iv;
                }
            }
            if (strInvoke != null) {
                destination$iv$iv$iv.add(strInvoke);
            }
            destination$iv$iv$iv2 = destination$iv$iv$iv;
            index$iv$iv$iv$iv = index$iv$iv$iv$iv2;
        }
        String string = ((StringBuilder) CollectionsKt.joinTo((List) destination$iv$iv$iv2, new StringBuilder(resultSizeEstimate$iv), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) != 0 ? "" : null, (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static final String trimIndent(String $this$trimIndent) {
        Intrinsics.checkNotNullParameter($this$trimIndent, "<this>");
        return StringsKt.replaceIndent($this$trimIndent, "");
    }

    public static /* synthetic */ String replaceIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return StringsKt.replaceIndent(str, str2);
    }

    public static final String replaceIndent(String $this$replaceIndent, String newIndent) {
        String strInvoke;
        Intrinsics.checkNotNullParameter($this$replaceIndent, "<this>");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        List<String> listLines = StringsKt.lines($this$replaceIndent);
        List<String> $this$filter$iv = listLines;
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$filter$iv) {
            String p0 = (String) element$iv$iv;
            if (!StringsKt.isBlank(p0)) {
                destination$iv$iv.add(element$iv$iv);
            }
        }
        Iterable $this$map$iv = (List) destination$iv$iv;
        Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            String p1 = (String) item$iv$iv;
            destination$iv$iv2.add(Integer.valueOf(indentWidth$StringsKt__IndentKt(p1)));
        }
        Integer num = (Integer) CollectionsKt.minOrNull(destination$iv$iv2);
        int minCommonIndent = num != null ? num.intValue() : 0;
        int resultSizeEstimate$iv = $this$replaceIndent.length() + (newIndent.length() * listLines.size());
        Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(newIndent);
        int lastIndex$iv = CollectionsKt.getLastIndex(listLines);
        List<String> $this$mapIndexedNotNull$iv$iv = listLines;
        Collection destination$iv$iv$iv = new ArrayList();
        int index$iv$iv$iv$iv = 0;
        for (Object item$iv$iv$iv$iv : $this$mapIndexedNotNull$iv$iv) {
            int index$iv$iv$iv$iv2 = index$iv$iv$iv$iv + 1;
            if (index$iv$iv$iv$iv < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String value$iv = (String) item$iv$iv$iv$iv;
            int index$iv = index$iv$iv$iv$iv;
            if ((index$iv == 0 || index$iv == lastIndex$iv) && StringsKt.isBlank(value$iv)) {
                strInvoke = null;
            } else {
                String line = StringsKt.drop(value$iv, minCommonIndent);
                if (line == null || (strInvoke = indentFunction$StringsKt__IndentKt.invoke(line)) == null) {
                    strInvoke = value$iv;
                }
            }
            if (strInvoke != null) {
                destination$iv$iv$iv.add(strInvoke);
            }
            index$iv$iv$iv$iv = index$iv$iv$iv$iv2;
        }
        String string = ((StringBuilder) CollectionsKt.joinTo((List) destination$iv$iv$iv, new StringBuilder(resultSizeEstimate$iv), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) != 0 ? "" : null, (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String prependIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "    ";
        }
        return StringsKt.prependIndent(str, str2);
    }

    public static final String prependIndent(String $this$prependIndent, final String indent) {
        Intrinsics.checkNotNullParameter($this$prependIndent, "<this>");
        Intrinsics.checkNotNullParameter(indent, "indent");
        return SequencesKt.joinToString$default(SequencesKt.map(StringsKt.lineSequence($this$prependIndent), new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt.prependIndent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (StringsKt.isBlank(it)) {
                    return it.length() < indent.length() ? indent : it;
                }
                return indent + it;
            }
        }), "\n", null, null, 0, null, null, 62, null);
    }

    private static final int indentWidth$StringsKt__IndentKt(String $this$indentWidth) {
        String $this$indexOfFirst$iv = $this$indentWidth;
        int index$iv = 0;
        int length = $this$indexOfFirst$iv.length();
        while (true) {
            if (index$iv >= length) {
                index$iv = -1;
                break;
            }
            if (!CharsKt.isWhitespace($this$indexOfFirst$iv.charAt(index$iv))) {
                break;
            }
            index$iv++;
        }
        int it = index$iv;
        return it == -1 ? $this$indentWidth.length() : it;
    }

    private static final Function1<String, String> getIndentFunction$StringsKt__IndentKt(final String indent) {
        return indent.length() == 0 ? new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String line) {
                Intrinsics.checkNotNullParameter(line, "line");
                return line;
            }
        } : new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String line) {
                Intrinsics.checkNotNullParameter(line, "line");
                return indent + line;
            }
        };
    }

    private static final String reindent$StringsKt__IndentKt(List<String> list, int resultSizeEstimate, Function1<? super String, String> function1, Function1<? super String, String> function2) {
        int lastIndex;
        String strInvoke;
        int $i$f$reindent = 0;
        int lastIndex2 = CollectionsKt.getLastIndex(list);
        List<String> $this$mapIndexedNotNull$iv = list;
        Collection destination$iv$iv = new ArrayList();
        int index$iv$iv = 0;
        for (Object item$iv$iv$iv : $this$mapIndexedNotNull$iv) {
            int index$iv$iv$iv = index$iv$iv + 1;
            if (index$iv$iv < 0) {
                if (!PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                CollectionsKt.throwIndexOverflow();
            }
            String value = (String) item$iv$iv$iv;
            int index = index$iv$iv;
            int $i$f$reindent2 = $i$f$reindent;
            if ((index == 0 || index == lastIndex2) && StringsKt.isBlank(value)) {
                lastIndex = lastIndex2;
                strInvoke = null;
            } else {
                String strInvoke2 = function2.invoke(value);
                if (strInvoke2 != null) {
                    lastIndex = lastIndex2;
                    strInvoke = function1.invoke(strInvoke2);
                    if (strInvoke == null) {
                    }
                } else {
                    lastIndex = lastIndex2;
                }
                strInvoke = value;
            }
            if (strInvoke != null) {
                destination$iv$iv.add(strInvoke);
            }
            index$iv$iv = index$iv$iv$iv;
            $i$f$reindent = $i$f$reindent2;
            lastIndex2 = lastIndex;
        }
        String string = ((StringBuilder) CollectionsKt.joinTo((List) destination$iv$iv, new StringBuilder(resultSizeEstimate), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) != 0 ? "" : null, (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
