package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UArraySorting.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\t\u0010\n\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\f\u0010\r\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0013\u0010\u0014\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0015\u0010\u0016\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u0014\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0016\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0018\u001a'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UArraySortingKt {
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m535partition4UcCI2c(byte[] array, int left, int right) {
        int i = left;
        int j = right;
        byte pivot = UByteArray.m155getw2LRezQ(array, (left + right) / 2);
        while (i <= j) {
            while (Intrinsics.compare(UByteArray.m155getw2LRezQ(array, i) & UByte.MAX_VALUE, pivot & UByte.MAX_VALUE) < 0) {
                i++;
            }
            while (Intrinsics.compare(UByteArray.m155getw2LRezQ(array, j) & UByte.MAX_VALUE, pivot & UByte.MAX_VALUE) > 0) {
                j--;
            }
            if (i <= j) {
                byte tmp = UByteArray.m155getw2LRezQ(array, i);
                UByteArray.m160setVurrAj0(array, i, UByteArray.m155getw2LRezQ(array, j));
                UByteArray.m160setVurrAj0(array, j, tmp);
                i++;
                j--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m539quickSort4UcCI2c(byte[] array, int left, int right) {
        int index = m535partition4UcCI2c(array, left, right);
        if (left < index - 1) {
            m539quickSort4UcCI2c(array, left, index - 1);
        }
        if (index < right) {
            m539quickSort4UcCI2c(array, index, right);
        }
    }

    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m536partitionAa5vz7o(short[] array, int left, int right) {
        int i = left;
        int j = right;
        short pivot = UShortArray.m418getMh2AYeg(array, (left + right) / 2);
        while (i <= j) {
            while (Intrinsics.compare(UShortArray.m418getMh2AYeg(array, i) & UShort.MAX_VALUE, pivot & UShort.MAX_VALUE) < 0) {
                i++;
            }
            while (Intrinsics.compare(UShortArray.m418getMh2AYeg(array, j) & UShort.MAX_VALUE, pivot & UShort.MAX_VALUE) > 0) {
                j--;
            }
            if (i <= j) {
                short tmp = UShortArray.m418getMh2AYeg(array, i);
                UShortArray.m423set01HTLdE(array, i, UShortArray.m418getMh2AYeg(array, j));
                UShortArray.m423set01HTLdE(array, j, tmp);
                i++;
                j--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m540quickSortAa5vz7o(short[] array, int left, int right) {
        int index = m536partitionAa5vz7o(array, left, right);
        if (left < index - 1) {
            m540quickSortAa5vz7o(array, left, index - 1);
        }
        if (index < right) {
            m540quickSortAa5vz7o(array, index, right);
        }
    }

    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m537partitionoBK06Vg(int[] array, int left, int right) {
        int i = left;
        int j = right;
        int pivot = UIntArray.m234getpVg5ArA(array, (left + right) / 2);
        while (i <= j) {
            while (Integer.compare(UIntArray.m234getpVg5ArA(array, i) ^ Integer.MIN_VALUE, pivot ^ Integer.MIN_VALUE) < 0) {
                i++;
            }
            while (Integer.compare(UIntArray.m234getpVg5ArA(array, j) ^ Integer.MIN_VALUE, pivot ^ Integer.MIN_VALUE) > 0) {
                j--;
            }
            if (i <= j) {
                int tmp = UIntArray.m234getpVg5ArA(array, i);
                UIntArray.m239setVXSXFK8(array, i, UIntArray.m234getpVg5ArA(array, j));
                UIntArray.m239setVXSXFK8(array, j, tmp);
                i++;
                j--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m541quickSortoBK06Vg(int[] array, int left, int right) {
        int index = m537partitionoBK06Vg(array, left, right);
        if (left < index - 1) {
            m541quickSortoBK06Vg(array, left, index - 1);
        }
        if (index < right) {
            m541quickSortoBK06Vg(array, index, right);
        }
    }

    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m534partitionnroSd4(long[] array, int left, int right) {
        int i = left;
        int j = right;
        long pivot = ULongArray.m313getsVKNKU(array, (left + right) / 2);
        while (i <= j) {
            while (Long.compare(ULongArray.m313getsVKNKU(array, i) ^ Long.MIN_VALUE, pivot ^ Long.MIN_VALUE) < 0) {
                i++;
            }
            while (Long.compare(ULongArray.m313getsVKNKU(array, j) ^ Long.MIN_VALUE, pivot ^ Long.MIN_VALUE) > 0) {
                j--;
            }
            if (i <= j) {
                long tmp = ULongArray.m313getsVKNKU(array, i);
                ULongArray.m318setk8EXiF4(array, i, ULongArray.m313getsVKNKU(array, j));
                ULongArray.m318setk8EXiF4(array, j, tmp);
                i++;
                j--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m538quickSortnroSd4(long[] array, int left, int right) {
        int index = m534partitionnroSd4(array, left, right);
        if (left < index - 1) {
            m538quickSortnroSd4(array, left, index - 1);
        }
        if (index < right) {
            m538quickSortnroSd4(array, index, right);
        }
    }

    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m543sortArray4UcCI2c(byte[] array, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(array, "array");
        m539quickSort4UcCI2c(array, fromIndex, toIndex - 1);
    }

    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m544sortArrayAa5vz7o(short[] array, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(array, "array");
        m540quickSortAa5vz7o(array, fromIndex, toIndex - 1);
    }

    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m545sortArrayoBK06Vg(int[] array, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(array, "array");
        m541quickSortoBK06Vg(array, fromIndex, toIndex - 1);
    }

    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m542sortArraynroSd4(long[] array, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(array, "array");
        m538quickSortnroSd4(array, fromIndex, toIndex - 1);
    }
}
