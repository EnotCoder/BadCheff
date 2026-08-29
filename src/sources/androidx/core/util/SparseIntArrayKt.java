package androidx.core.util;

import android.util.SparseIntArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SparseIntArray.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\b\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0001H\u0086\b\u001aE\u0010\u000b\u001a\u00020\f*\u00020\u000226\u0010\r\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\f0\u000eH\u0086\b\u001a\u001d\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0086\b\u001a#\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u0014H\u0086\b\u001a\r\u0010\u0015\u001a\u00020\u0006*\u00020\u0002H\u0086\b\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\u0086\b\u001a\n\u0010\u0017\u001a\u00020\u0018*\u00020\u0002\u001a\u0015\u0010\u0019\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0086\u0002\u001a\u0012\u0010\u001b\u001a\u00020\f*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u001a\u0010\u001c\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001\u001a\u001d\u0010\u001d\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0086\n\u001a\n\u0010\u001e\u001a\u00020\u0018*\u00020\u0002\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u001f"}, d2 = {"size", "", "Landroid/util/SparseIntArray;", "getSize", "(Landroid/util/SparseIntArray;)I", "contains", "", "key", "containsKey", "containsValue", "value", "forEach", "", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "isEmpty", "isNotEmpty", "keyIterator", "Lkotlin/collections/IntIterator;", "plus", "other", "putAll", "remove", "set", "valueIterator", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class SparseIntArrayKt {
    public static final int getSize(SparseIntArray size) {
        Intrinsics.checkParameterIsNotNull(size, "$this$size");
        return size.size();
    }

    public static final boolean contains(SparseIntArray contains, int key) {
        Intrinsics.checkParameterIsNotNull(contains, "$this$contains");
        return contains.indexOfKey(key) >= 0;
    }

    public static final void set(SparseIntArray set, int key, int value) {
        Intrinsics.checkParameterIsNotNull(set, "$this$set");
        set.put(key, value);
    }

    public static final SparseIntArray plus(SparseIntArray plus, SparseIntArray other) {
        Intrinsics.checkParameterIsNotNull(plus, "$this$plus");
        Intrinsics.checkParameterIsNotNull(other, "other");
        SparseIntArray sparseIntArray = new SparseIntArray(plus.size() + other.size());
        putAll(sparseIntArray, plus);
        putAll(sparseIntArray, other);
        return sparseIntArray;
    }

    public static final boolean containsKey(SparseIntArray containsKey, int key) {
        Intrinsics.checkParameterIsNotNull(containsKey, "$this$containsKey");
        return containsKey.indexOfKey(key) >= 0;
    }

    public static final boolean containsValue(SparseIntArray containsValue, int value) {
        Intrinsics.checkParameterIsNotNull(containsValue, "$this$containsValue");
        return containsValue.indexOfValue(value) != -1;
    }

    public static final int getOrDefault(SparseIntArray getOrDefault, int key, int defaultValue) {
        Intrinsics.checkParameterIsNotNull(getOrDefault, "$this$getOrDefault");
        return getOrDefault.get(key, defaultValue);
    }

    public static final int getOrElse(SparseIntArray getOrElse, int key, Function0<Integer> defaultValue) {
        Intrinsics.checkParameterIsNotNull(getOrElse, "$this$getOrElse");
        Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
        int it = getOrElse.indexOfKey(key);
        return it != -1 ? getOrElse.valueAt(it) : defaultValue.invoke().intValue();
    }

    public static final boolean isEmpty(SparseIntArray isEmpty) {
        Intrinsics.checkParameterIsNotNull(isEmpty, "$this$isEmpty");
        return isEmpty.size() == 0;
    }

    public static final boolean isNotEmpty(SparseIntArray isNotEmpty) {
        Intrinsics.checkParameterIsNotNull(isNotEmpty, "$this$isNotEmpty");
        return isNotEmpty.size() != 0;
    }

    public static final boolean remove(SparseIntArray remove, int key, int value) {
        Intrinsics.checkParameterIsNotNull(remove, "$this$remove");
        int index = remove.indexOfKey(key);
        if (index != -1 && value == remove.valueAt(index)) {
            remove.removeAt(index);
            return true;
        }
        return false;
    }

    public static final void putAll(SparseIntArray putAll, SparseIntArray other) {
        Intrinsics.checkParameterIsNotNull(putAll, "$this$putAll");
        Intrinsics.checkParameterIsNotNull(other, "other");
        int size = other.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            int p1 = other.keyAt(index$iv);
            int p2 = other.valueAt(index$iv);
            putAll.put(p1, p2);
        }
    }

    public static final void forEach(SparseIntArray forEach, Function2<? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkParameterIsNotNull(forEach, "$this$forEach");
        Intrinsics.checkParameterIsNotNull(action, "action");
        int size = forEach.size();
        for (int index = 0; index < size; index++) {
            action.invoke(Integer.valueOf(forEach.keyAt(index)), Integer.valueOf(forEach.valueAt(index)));
        }
    }

    public static final IntIterator keyIterator(final SparseIntArray keyIterator) {
        Intrinsics.checkParameterIsNotNull(keyIterator, "$this$keyIterator");
        return new IntIterator() { // from class: androidx.core.util.SparseIntArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            public final void setIndex(int i) {
                this.index = i;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < keyIterator.size();
            }

            @Override // kotlin.collections.IntIterator
            public int nextInt() {
                SparseIntArray sparseIntArray = keyIterator;
                int i = this.index;
                this.index = i + 1;
                return sparseIntArray.keyAt(i);
            }
        };
    }

    public static final IntIterator valueIterator(final SparseIntArray valueIterator) {
        Intrinsics.checkParameterIsNotNull(valueIterator, "$this$valueIterator");
        return new IntIterator() { // from class: androidx.core.util.SparseIntArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            public final void setIndex(int i) {
                this.index = i;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < valueIterator.size();
            }

            @Override // kotlin.collections.IntIterator
            public int nextInt() {
                SparseIntArray sparseIntArray = valueIterator;
                int i = this.index;
                this.index = i + 1;
                return sparseIntArray.valueAt(i);
            }
        };
    }
}
