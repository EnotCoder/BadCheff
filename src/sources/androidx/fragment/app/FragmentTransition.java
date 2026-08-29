package androidx.fragment.app;

import android.view.View;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentTransition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e2\u0006\u0010\u0011\u001a\u00020\fH\u0007J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002J\u001e\u0010\u0013\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\b\u0010\u0018\u001a\u00020\fH\u0007J\"\u0010\u0019\u001a\u0004\u0018\u00010\u000f*\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u001a\u001a\u00020\u000fH\u0007J,\u0010\u001b\u001a\u00020\u0007*\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eH\u0007R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/fragment/app/FragmentTransition;", "", "()V", "PLATFORM_IMPL", "Landroidx/fragment/app/FragmentTransitionImpl;", "SUPPORT_IMPL", "callSharedElementStartEnd", "", "inFragment", "Landroidx/fragment/app/Fragment;", "outFragment", "isPop", "", "sharedElements", "Landroidx/collection/ArrayMap;", "", "Landroid/view/View;", "isStart", "resolveSupportImpl", "setViewVisibility", "views", "", "visibility", "", "supportsTransition", "findKeyForValue", "value", "retainValues", "namedViews", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FragmentTransition {
    public static final FragmentTransition INSTANCE;
    public static final FragmentTransitionImpl PLATFORM_IMPL;
    public static final FragmentTransitionImpl SUPPORT_IMPL;

    private FragmentTransition() {
    }

    static {
        FragmentTransition fragmentTransition = new FragmentTransition();
        INSTANCE = fragmentTransition;
        PLATFORM_IMPL = new FragmentTransitionCompat21();
        SUPPORT_IMPL = fragmentTransition.resolveSupportImpl();
    }

    private final FragmentTransitionImpl resolveSupportImpl() {
        try {
            Class<?> cls = Class.forName("androidx.transition.FragmentTransitionSupport");
            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<androidx.fragment.app.FragmentTransitionImpl>");
            return (FragmentTransitionImpl) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    @JvmStatic
    public static final String findKeyForValue(ArrayMap<String, String> arrayMap, String value) {
        Intrinsics.checkNotNullParameter(arrayMap, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        ArrayMap<String, String> $this$filter$iv = arrayMap;
        Map destination$iv$iv = new LinkedHashMap();
        for (Map.Entry<String, String> entry : $this$filter$iv.entrySet()) {
            if (Intrinsics.areEqual(entry.getValue(), value)) {
                destination$iv$iv.put(entry.getKey(), entry.getValue());
            }
        }
        Collection destination$iv$iv2 = new ArrayList(destination$iv$iv.size());
        for (Map.Entry item$iv$iv : destination$iv$iv.entrySet()) {
            destination$iv$iv2.add((String) item$iv$iv.getKey());
        }
        return (String) CollectionsKt.firstOrNull((List) destination$iv$iv2);
    }

    @JvmStatic
    public static final void retainValues(ArrayMap<String, String> arrayMap, ArrayMap<String, View> namedViews) {
        Intrinsics.checkNotNullParameter(arrayMap, "<this>");
        Intrinsics.checkNotNullParameter(namedViews, "namedViews");
        int i = arrayMap.size();
        while (true) {
            i--;
            if (-1 < i) {
                String targetName = arrayMap.valueAt(i);
                if (!namedViews.containsKey(targetName)) {
                    arrayMap.removeAt(i);
                }
            } else {
                return;
            }
        }
    }

    @JvmStatic
    public static final void callSharedElementStartEnd(Fragment inFragment, Fragment outFragment, boolean isPop, ArrayMap<String, View> sharedElements, boolean isStart) {
        SharedElementCallback sharedElementCallback;
        Intrinsics.checkNotNullParameter(inFragment, "inFragment");
        Intrinsics.checkNotNullParameter(outFragment, "outFragment");
        Intrinsics.checkNotNullParameter(sharedElements, "sharedElements");
        if (isPop) {
            sharedElementCallback = outFragment.getEnterTransitionCallback();
        } else {
            sharedElementCallback = inFragment.getEnterTransitionCallback();
        }
        if (sharedElementCallback != null) {
            ArrayMap<String, View> $this$map$iv = sharedElements;
            Collection destination$iv$iv = new ArrayList($this$map$iv.size());
            Iterator<Map.Entry<String, View>> it = $this$map$iv.entrySet().iterator();
            while (it.hasNext()) {
                destination$iv$iv.add(it.next().getValue());
            }
            List views = (List) destination$iv$iv;
            ArrayMap<String, View> $this$map$iv2 = sharedElements;
            Collection destination$iv$iv2 = new ArrayList($this$map$iv2.size());
            Iterator<Map.Entry<String, View>> it2 = $this$map$iv2.entrySet().iterator();
            while (it2.hasNext()) {
                destination$iv$iv2.add(it2.next().getKey());
            }
            List names = (List) destination$iv$iv2;
            if (isStart) {
                sharedElementCallback.onSharedElementStart(names, views, null);
            } else {
                sharedElementCallback.onSharedElementEnd(names, views, null);
            }
        }
    }

    @JvmStatic
    public static final void setViewVisibility(List<? extends View> views, int visibility) {
        Intrinsics.checkNotNullParameter(views, "views");
        List<? extends View> $this$forEach$iv = views;
        for (Object element$iv : $this$forEach$iv) {
            View view = (View) element$iv;
            view.setVisibility(visibility);
        }
    }

    @JvmStatic
    public static final boolean supportsTransition() {
        return (PLATFORM_IMPL == null && SUPPORT_IMPL == null) ? false : true;
    }
}
