package kotlin.internal;

import kotlin.Metadata;
import kotlin.UByte$$ExternalSyntheticBackport0;
import kotlin.UByte$$ExternalSyntheticBackport3;
import kotlin.UInt;
import kotlin.ULong;

/* JADX INFO: compiled from: UProgressionUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m1286differenceModuloWZ9TVnA(int a, int b, int c) {
        int ac = UByte$$ExternalSyntheticBackport0.m(a, c);
        int bc = UByte$$ExternalSyntheticBackport0.m(b, c);
        return UInt.m174constructorimpl(Integer.compare(ac ^ Integer.MIN_VALUE, bc ^ Integer.MIN_VALUE) >= 0 ? ac - bc : UInt.m174constructorimpl(ac - bc) + c);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m1287differenceModulosambcqE(long a, long b, long c) {
        long ac = UByte$$ExternalSyntheticBackport3.m(a, c);
        long bc = UByte$$ExternalSyntheticBackport3.m(b, c);
        return ULong.m253constructorimpl(Long.compare(ac ^ Long.MIN_VALUE, bc ^ Long.MIN_VALUE) >= 0 ? ac - bc : ULong.m253constructorimpl(ac - bc) + c);
    }

    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m1289getProgressionLastElementNkh28Cs(int start, int end, int step) {
        if (step > 0) {
            if (Integer.compare(start ^ Integer.MIN_VALUE, end ^ Integer.MIN_VALUE) < 0) {
                return UInt.m174constructorimpl(end - m1286differenceModuloWZ9TVnA(end, start, UInt.m174constructorimpl(step)));
            }
        } else {
            if (step >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (Integer.compare(start ^ Integer.MIN_VALUE, end ^ Integer.MIN_VALUE) > 0) {
                return UInt.m174constructorimpl(m1286differenceModuloWZ9TVnA(start, end, UInt.m174constructorimpl(-step)) + end);
            }
        }
        return end;
    }

    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m1288getProgressionLastElement7ftBX0g(long start, long end, long step) {
        if (step > 0) {
            if (Long.compare(start ^ Long.MIN_VALUE, end ^ Long.MIN_VALUE) < 0) {
                return ULong.m253constructorimpl(end - m1287differenceModulosambcqE(end, start, ULong.m253constructorimpl(step)));
            }
        } else {
            if (step >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (Long.compare(start ^ Long.MIN_VALUE, end ^ Long.MIN_VALUE) > 0) {
                return ULong.m253constructorimpl(m1287differenceModulosambcqE(start, end, ULong.m253constructorimpl(-step)) + end);
            }
        }
        return end;
    }
}
