package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: _URanges.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001b\u0010\u0000\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001b\u0010\u0000\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\n\u001a\u001b\u0010\u0000\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\f\u0010\r\u001a\u001b\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0010\u0010\u0004\u001a\u001b\u0010\u000e\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0011\u0010\u0007\u001a\u001b\u0010\u000e\u001a\u00020\b*\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0012\u0010\n\u001a\u001b\u0010\u000e\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0013\u0010\r\u001a#\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a#\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u001a!\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u001aH\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a#\u0010\u0014\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a!\u0010\u0014\u001a\u00020\b*\u00020\b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001aH\u0007¢\u0006\u0004\b\u001f\u0010 \u001a#\u0010\u0014\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b!\u0010\"\u001a\u001c\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b'\u0010(\u001a\u001c\u0010#\u001a\u00020$*\u00020%2\b\u0010)\u001a\u0004\u0018\u00010\u0005H\u0087\n¢\u0006\u0002\b*\u001a\u001c\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\bH\u0087\u0002¢\u0006\u0004\b+\u0010,\u001a\u001c\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002¢\u0006\u0004\b-\u0010.\u001a\u001c\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b0\u00101\u001a\u001c\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b2\u00103\u001a\u001c\u0010#\u001a\u00020$*\u00020/2\b\u0010)\u001a\u0004\u0018\u00010\bH\u0087\n¢\u0006\u0002\b4\u001a\u001c\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002¢\u0006\u0004\b5\u00106\u001a\u001c\u00107\u001a\u000208*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004¢\u0006\u0004\b:\u0010;\u001a\u001c\u00107\u001a\u000208*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004¢\u0006\u0004\b<\u0010=\u001a\u001c\u00107\u001a\u00020>*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004¢\u0006\u0004\b?\u0010@\u001a\u001c\u00107\u001a\u000208*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004¢\u0006\u0004\bA\u0010B\u001a\u0011\u0010C\u001a\u00020\u0005*\u000208H\u0007¢\u0006\u0002\u0010D\u001a\u0011\u0010C\u001a\u00020\b*\u00020>H\u0007¢\u0006\u0002\u0010E\u001a\u000e\u0010F\u001a\u0004\u0018\u00010\u0005*\u000208H\u0007\u001a\u000e\u0010F\u001a\u0004\u0018\u00010\b*\u00020>H\u0007\u001a\u0011\u0010G\u001a\u00020\u0005*\u000208H\u0007¢\u0006\u0002\u0010D\u001a\u0011\u0010G\u001a\u00020\b*\u00020>H\u0007¢\u0006\u0002\u0010E\u001a\u000e\u0010H\u001a\u0004\u0018\u00010\u0005*\u000208H\u0007\u001a\u000e\u0010H\u001a\u0004\u0018\u00010\b*\u00020>H\u0007\u001a\u0012\u0010I\u001a\u00020\u0005*\u00020%H\u0087\b¢\u0006\u0002\u0010J\u001a\u0019\u0010I\u001a\u00020\u0005*\u00020%2\u0006\u0010I\u001a\u00020KH\u0007¢\u0006\u0002\u0010L\u001a\u0012\u0010I\u001a\u00020\b*\u00020/H\u0087\b¢\u0006\u0002\u0010M\u001a\u0019\u0010I\u001a\u00020\b*\u00020/2\u0006\u0010I\u001a\u00020KH\u0007¢\u0006\u0002\u0010N\u001a\u000f\u0010O\u001a\u0004\u0018\u00010\u0005*\u00020%H\u0087\b\u001a\u0016\u0010O\u001a\u0004\u0018\u00010\u0005*\u00020%2\u0006\u0010I\u001a\u00020KH\u0007\u001a\u000f\u0010O\u001a\u0004\u0018\u00010\b*\u00020/H\u0087\b\u001a\u0016\u0010O\u001a\u0004\u0018\u00010\b*\u00020/2\u0006\u0010I\u001a\u00020KH\u0007\u001a\f\u0010P\u001a\u000208*\u000208H\u0007\u001a\f\u0010P\u001a\u00020>*\u00020>H\u0007\u001a\u0015\u0010Q\u001a\u000208*\u0002082\u0006\u0010Q\u001a\u00020RH\u0087\u0004\u001a\u0015\u0010Q\u001a\u00020>*\u00020>2\u0006\u0010Q\u001a\u00020SH\u0087\u0004\u001a\u001c\u0010T\u001a\u00020%*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004¢\u0006\u0004\bU\u0010V\u001a\u001c\u0010T\u001a\u00020%*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004¢\u0006\u0004\bW\u0010X\u001a\u001c\u0010T\u001a\u00020/*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004¢\u0006\u0004\bY\u0010Z\u001a\u001c\u0010T\u001a\u00020%*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004¢\u0006\u0004\b[\u0010\\¨\u0006]"}, d2 = {"coerceAtLeast", "Lkotlin/UByte;", "minimumValue", "coerceAtLeast-Kr8caGY", "(BB)B", "Lkotlin/UInt;", "coerceAtLeast-J1ME1BU", "(II)I", "Lkotlin/ULong;", "coerceAtLeast-eb3DHEI", "(JJ)J", "Lkotlin/UShort;", "coerceAtLeast-5PvTz6A", "(SS)S", "coerceAtMost", "maximumValue", "coerceAtMost-Kr8caGY", "coerceAtMost-J1ME1BU", "coerceAtMost-eb3DHEI", "coerceAtMost-5PvTz6A", "coerceIn", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-WZ9TVnA", "(III)I", "range", "Lkotlin/ranges/ClosedRange;", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "coerceIn-VKSA0NQ", "(SSS)S", "contains", "", "Lkotlin/ranges/UIntRange;", "value", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "element", "contains-biwQdVI", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "Lkotlin/ranges/ULongRange;", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-GYNo2lE", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "downTo", "Lkotlin/ranges/UIntProgression;", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "first", "(Lkotlin/ranges/UIntProgression;)I", "(Lkotlin/ranges/ULongProgression;)J", "firstOrNull", "last", "lastOrNull", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;)J", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, k = 5, mv = {1, 9, 0}, xi = 49, xs = "kotlin/ranges/URangesKt")
public class URangesKt___URangesKt {
    public static final int first(UIntProgression $this$first) {
        Intrinsics.checkNotNullParameter($this$first, "<this>");
        if ($this$first.isEmpty()) {
            throw new NoSuchElementException("Progression " + $this$first + " is empty.");
        }
        return $this$first.getFirst();
    }

    public static final long first(ULongProgression $this$first) {
        Intrinsics.checkNotNullParameter($this$first, "<this>");
        if ($this$first.isEmpty()) {
            throw new NoSuchElementException("Progression " + $this$first + " is empty.");
        }
        return $this$first.getFirst();
    }

    public static final UInt firstOrNull(UIntProgression $this$firstOrNull) {
        Intrinsics.checkNotNullParameter($this$firstOrNull, "<this>");
        if ($this$firstOrNull.isEmpty()) {
            return null;
        }
        return UInt.m168boximpl($this$firstOrNull.getFirst());
    }

    public static final ULong firstOrNull(ULongProgression $this$firstOrNull) {
        Intrinsics.checkNotNullParameter($this$firstOrNull, "<this>");
        if ($this$firstOrNull.isEmpty()) {
            return null;
        }
        return ULong.m247boximpl($this$firstOrNull.getFirst());
    }

    public static final int last(UIntProgression $this$last) {
        Intrinsics.checkNotNullParameter($this$last, "<this>");
        if ($this$last.isEmpty()) {
            throw new NoSuchElementException("Progression " + $this$last + " is empty.");
        }
        return $this$last.getLast();
    }

    public static final long last(ULongProgression $this$last) {
        Intrinsics.checkNotNullParameter($this$last, "<this>");
        if ($this$last.isEmpty()) {
            throw new NoSuchElementException("Progression " + $this$last + " is empty.");
        }
        return $this$last.getLast();
    }

    public static final UInt lastOrNull(UIntProgression $this$lastOrNull) {
        Intrinsics.checkNotNullParameter($this$lastOrNull, "<this>");
        if ($this$lastOrNull.isEmpty()) {
            return null;
        }
        return UInt.m168boximpl($this$lastOrNull.getLast());
    }

    public static final ULong lastOrNull(ULongProgression $this$lastOrNull) {
        Intrinsics.checkNotNullParameter($this$lastOrNull, "<this>");
        if ($this$lastOrNull.isEmpty()) {
            return null;
        }
        return ULong.m247boximpl($this$lastOrNull.getLast());
    }

    private static final int random(UIntRange $this$random) {
        Intrinsics.checkNotNullParameter($this$random, "<this>");
        return URangesKt.random($this$random, Random.INSTANCE);
    }

    private static final long random(ULongRange $this$random) {
        Intrinsics.checkNotNullParameter($this$random, "<this>");
        return URangesKt.random($this$random, Random.INSTANCE);
    }

    public static final int random(UIntRange $this$random, Random random) {
        Intrinsics.checkNotNullParameter($this$random, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextUInt(random, $this$random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    public static final long random(ULongRange $this$random, Random random) {
        Intrinsics.checkNotNullParameter($this$random, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextULong(random, $this$random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    private static final UInt randomOrNull(UIntRange $this$randomOrNull) {
        Intrinsics.checkNotNullParameter($this$randomOrNull, "<this>");
        return URangesKt.randomOrNull($this$randomOrNull, Random.INSTANCE);
    }

    private static final ULong randomOrNull(ULongRange $this$randomOrNull) {
        Intrinsics.checkNotNullParameter($this$randomOrNull, "<this>");
        return URangesKt.randomOrNull($this$randomOrNull, Random.INSTANCE);
    }

    public static final UInt randomOrNull(UIntRange $this$randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter($this$randomOrNull, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if ($this$randomOrNull.isEmpty()) {
            return null;
        }
        return UInt.m168boximpl(URandomKt.nextUInt(random, $this$randomOrNull));
    }

    public static final ULong randomOrNull(ULongRange $this$randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter($this$randomOrNull, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if ($this$randomOrNull.isEmpty()) {
            return null;
        }
        return ULong.m247boximpl(URandomKt.nextULong(random, $this$randomOrNull));
    }

    /* JADX INFO: renamed from: contains-biwQdVI, reason: not valid java name */
    private static final boolean m1340containsbiwQdVI(UIntRange contains, UInt element) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return element != null && contains.m1308containsWZ4Q5Ns(element.getData());
    }

    /* JADX INFO: renamed from: contains-GYNo2lE, reason: not valid java name */
    private static final boolean m1336containsGYNo2lE(ULongRange contains, ULong element) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return element != null && contains.m1317containsVKZWuLQ(element.getData());
    }

    /* JADX INFO: renamed from: contains-68kG9v0, reason: not valid java name */
    public static final boolean m1335contains68kG9v0(UIntRange contains, byte value) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1308containsWZ4Q5Ns(UInt.m174constructorimpl(value & UByte.MAX_VALUE));
    }

    /* JADX INFO: renamed from: contains-ULb-yJY, reason: not valid java name */
    public static final boolean m1338containsULbyJY(ULongRange contains, byte value) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1317containsVKZWuLQ(ULong.m253constructorimpl(((long) value) & 255));
    }

    /* JADX INFO: renamed from: contains-Gab390E, reason: not valid java name */
    public static final boolean m1337containsGab390E(ULongRange contains, int value) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1317containsVKZWuLQ(ULong.m253constructorimpl(((long) value) & 4294967295L));
    }

    /* JADX INFO: renamed from: contains-fz5IDCE, reason: not valid java name */
    public static final boolean m1341containsfz5IDCE(UIntRange contains, long value) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ULong.m253constructorimpl(value >>> 32) == 0 && contains.m1308containsWZ4Q5Ns(UInt.m174constructorimpl((int) value));
    }

    /* JADX INFO: renamed from: contains-ZsK3CEQ, reason: not valid java name */
    public static final boolean m1339containsZsK3CEQ(UIntRange contains, short value) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1308containsWZ4Q5Ns(UInt.m174constructorimpl(65535 & value));
    }

    /* JADX INFO: renamed from: contains-uhHAxoY, reason: not valid java name */
    public static final boolean m1342containsuhHAxoY(ULongRange contains, short value) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1317containsVKZWuLQ(ULong.m253constructorimpl(((long) value) & 65535));
    }

    /* JADX INFO: renamed from: downTo-Kr8caGY, reason: not valid java name */
    public static final UIntProgression m1345downToKr8caGY(byte $this$downTo_u2dKr8caGY, byte to) {
        return UIntProgression.INSTANCE.m1305fromClosedRangeNkh28Cs(UInt.m174constructorimpl($this$downTo_u2dKr8caGY & UByte.MAX_VALUE), UInt.m174constructorimpl(to & UByte.MAX_VALUE), -1);
    }

    /* JADX INFO: renamed from: downTo-J1ME1BU, reason: not valid java name */
    public static final UIntProgression m1344downToJ1ME1BU(int $this$downTo_u2dJ1ME1BU, int to) {
        return UIntProgression.INSTANCE.m1305fromClosedRangeNkh28Cs($this$downTo_u2dJ1ME1BU, to, -1);
    }

    /* JADX INFO: renamed from: downTo-eb3DHEI, reason: not valid java name */
    public static final ULongProgression m1346downToeb3DHEI(long $this$downTo_u2deb3DHEI, long to) {
        return ULongProgression.INSTANCE.m1314fromClosedRange7ftBX0g($this$downTo_u2deb3DHEI, to, -1L);
    }

    /* JADX INFO: renamed from: downTo-5PvTz6A, reason: not valid java name */
    public static final UIntProgression m1343downTo5PvTz6A(short $this$downTo_u2d5PvTz6A, short to) {
        return UIntProgression.INSTANCE.m1305fromClosedRangeNkh28Cs(UInt.m174constructorimpl($this$downTo_u2d5PvTz6A & UShort.MAX_VALUE), UInt.m174constructorimpl(65535 & to), -1);
    }

    public static final UIntProgression reversed(UIntProgression $this$reversed) {
        Intrinsics.checkNotNullParameter($this$reversed, "<this>");
        return UIntProgression.INSTANCE.m1305fromClosedRangeNkh28Cs($this$reversed.getLast(), $this$reversed.getFirst(), -$this$reversed.getStep());
    }

    public static final ULongProgression reversed(ULongProgression $this$reversed) {
        Intrinsics.checkNotNullParameter($this$reversed, "<this>");
        return ULongProgression.INSTANCE.m1314fromClosedRange7ftBX0g($this$reversed.getLast(), $this$reversed.getFirst(), -$this$reversed.getStep());
    }

    public static final UIntProgression step(UIntProgression $this$step, int step) {
        Intrinsics.checkNotNullParameter($this$step, "<this>");
        RangesKt.checkStepIsPositive(step > 0, Integer.valueOf(step));
        return UIntProgression.INSTANCE.m1305fromClosedRangeNkh28Cs($this$step.getFirst(), $this$step.getLast(), $this$step.getStep() > 0 ? step : -step);
    }

    public static final ULongProgression step(ULongProgression $this$step, long step) {
        Intrinsics.checkNotNullParameter($this$step, "<this>");
        RangesKt.checkStepIsPositive(step > 0, Long.valueOf(step));
        return ULongProgression.INSTANCE.m1314fromClosedRange7ftBX0g($this$step.getFirst(), $this$step.getLast(), $this$step.getStep() > 0 ? step : -step);
    }

    /* JADX INFO: renamed from: until-Kr8caGY, reason: not valid java name */
    public static final UIntRange m1349untilKr8caGY(byte $this$until_u2dKr8caGY, byte to) {
        return Intrinsics.compare(to & UByte.MAX_VALUE, 0) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(UInt.m174constructorimpl($this$until_u2dKr8caGY & UByte.MAX_VALUE), UInt.m174constructorimpl(UInt.m174constructorimpl(to & UByte.MAX_VALUE) - 1), null);
    }

    /* JADX INFO: renamed from: until-J1ME1BU, reason: not valid java name */
    public static final UIntRange m1348untilJ1ME1BU(int $this$until_u2dJ1ME1BU, int to) {
        return Integer.compare(to ^ Integer.MIN_VALUE, 0 ^ Integer.MIN_VALUE) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange($this$until_u2dJ1ME1BU, UInt.m174constructorimpl(to - 1), null);
    }

    /* JADX INFO: renamed from: until-eb3DHEI, reason: not valid java name */
    public static final ULongRange m1350untileb3DHEI(long $this$until_u2deb3DHEI, long to) {
        return Long.compare(to ^ Long.MIN_VALUE, 0 ^ Long.MIN_VALUE) <= 0 ? ULongRange.INSTANCE.getEMPTY() : new ULongRange($this$until_u2deb3DHEI, ULong.m253constructorimpl(to - ULong.m253constructorimpl(((long) 1) & 4294967295L)), null);
    }

    /* JADX INFO: renamed from: until-5PvTz6A, reason: not valid java name */
    public static final UIntRange m1347until5PvTz6A(short $this$until_u2d5PvTz6A, short to) {
        return Intrinsics.compare(to & UShort.MAX_VALUE, 0) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(UInt.m174constructorimpl($this$until_u2d5PvTz6A & UShort.MAX_VALUE), UInt.m174constructorimpl(UInt.m174constructorimpl(65535 & to) - 1), null);
    }

    /* JADX INFO: renamed from: coerceAtLeast-J1ME1BU, reason: not valid java name */
    public static final int m1322coerceAtLeastJ1ME1BU(int $this$coerceAtLeast_u2dJ1ME1BU, int minimumValue) {
        return Integer.compare($this$coerceAtLeast_u2dJ1ME1BU ^ Integer.MIN_VALUE, minimumValue ^ Integer.MIN_VALUE) < 0 ? minimumValue : $this$coerceAtLeast_u2dJ1ME1BU;
    }

    /* JADX INFO: renamed from: coerceAtLeast-eb3DHEI, reason: not valid java name */
    public static final long m1324coerceAtLeasteb3DHEI(long $this$coerceAtLeast_u2deb3DHEI, long minimumValue) {
        return Long.compare($this$coerceAtLeast_u2deb3DHEI ^ Long.MIN_VALUE, minimumValue ^ Long.MIN_VALUE) < 0 ? minimumValue : $this$coerceAtLeast_u2deb3DHEI;
    }

    /* JADX INFO: renamed from: coerceAtLeast-Kr8caGY, reason: not valid java name */
    public static final byte m1323coerceAtLeastKr8caGY(byte $this$coerceAtLeast_u2dKr8caGY, byte minimumValue) {
        return Intrinsics.compare($this$coerceAtLeast_u2dKr8caGY & UByte.MAX_VALUE, minimumValue & UByte.MAX_VALUE) < 0 ? minimumValue : $this$coerceAtLeast_u2dKr8caGY;
    }

    /* JADX INFO: renamed from: coerceAtLeast-5PvTz6A, reason: not valid java name */
    public static final short m1321coerceAtLeast5PvTz6A(short $this$coerceAtLeast_u2d5PvTz6A, short minimumValue) {
        return Intrinsics.compare($this$coerceAtLeast_u2d5PvTz6A & UShort.MAX_VALUE, 65535 & minimumValue) < 0 ? minimumValue : $this$coerceAtLeast_u2d5PvTz6A;
    }

    /* JADX INFO: renamed from: coerceAtMost-J1ME1BU, reason: not valid java name */
    public static final int m1326coerceAtMostJ1ME1BU(int $this$coerceAtMost_u2dJ1ME1BU, int maximumValue) {
        return Integer.compare($this$coerceAtMost_u2dJ1ME1BU ^ Integer.MIN_VALUE, maximumValue ^ Integer.MIN_VALUE) > 0 ? maximumValue : $this$coerceAtMost_u2dJ1ME1BU;
    }

    /* JADX INFO: renamed from: coerceAtMost-eb3DHEI, reason: not valid java name */
    public static final long m1328coerceAtMosteb3DHEI(long $this$coerceAtMost_u2deb3DHEI, long maximumValue) {
        return Long.compare($this$coerceAtMost_u2deb3DHEI ^ Long.MIN_VALUE, maximumValue ^ Long.MIN_VALUE) > 0 ? maximumValue : $this$coerceAtMost_u2deb3DHEI;
    }

    /* JADX INFO: renamed from: coerceAtMost-Kr8caGY, reason: not valid java name */
    public static final byte m1327coerceAtMostKr8caGY(byte $this$coerceAtMost_u2dKr8caGY, byte maximumValue) {
        return Intrinsics.compare($this$coerceAtMost_u2dKr8caGY & UByte.MAX_VALUE, maximumValue & UByte.MAX_VALUE) > 0 ? maximumValue : $this$coerceAtMost_u2dKr8caGY;
    }

    /* JADX INFO: renamed from: coerceAtMost-5PvTz6A, reason: not valid java name */
    public static final short m1325coerceAtMost5PvTz6A(short $this$coerceAtMost_u2d5PvTz6A, short maximumValue) {
        return Intrinsics.compare($this$coerceAtMost_u2d5PvTz6A & UShort.MAX_VALUE, 65535 & maximumValue) > 0 ? maximumValue : $this$coerceAtMost_u2d5PvTz6A;
    }

    /* JADX INFO: renamed from: coerceIn-WZ9TVnA, reason: not valid java name */
    public static final int m1331coerceInWZ9TVnA(int $this$coerceIn_u2dWZ9TVnA, int minimumValue, int maximumValue) {
        if (Integer.compare(minimumValue ^ Integer.MIN_VALUE, maximumValue ^ Integer.MIN_VALUE) > 0) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UInt.m220toStringimpl(maximumValue)) + " is less than minimum " + ((Object) UInt.m220toStringimpl(minimumValue)) + '.');
        }
        if (Integer.compare($this$coerceIn_u2dWZ9TVnA ^ Integer.MIN_VALUE, minimumValue ^ Integer.MIN_VALUE) < 0) {
            return minimumValue;
        }
        return Integer.compare($this$coerceIn_u2dWZ9TVnA ^ Integer.MIN_VALUE, maximumValue ^ Integer.MIN_VALUE) > 0 ? maximumValue : $this$coerceIn_u2dWZ9TVnA;
    }

    /* JADX INFO: renamed from: coerceIn-sambcqE, reason: not valid java name */
    public static final long m1333coerceInsambcqE(long $this$coerceIn_u2dsambcqE, long minimumValue, long maximumValue) {
        if (Long.compare(minimumValue ^ Long.MIN_VALUE, maximumValue ^ Long.MIN_VALUE) > 0) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) ULong.m299toStringimpl(maximumValue)) + " is less than minimum " + ((Object) ULong.m299toStringimpl(minimumValue)) + '.');
        }
        if (Long.compare($this$coerceIn_u2dsambcqE ^ Long.MIN_VALUE, minimumValue ^ Long.MIN_VALUE) < 0) {
            return minimumValue;
        }
        return Long.compare($this$coerceIn_u2dsambcqE ^ Long.MIN_VALUE, maximumValue ^ Long.MIN_VALUE) > 0 ? maximumValue : $this$coerceIn_u2dsambcqE;
    }

    /* JADX INFO: renamed from: coerceIn-b33U2AM, reason: not valid java name */
    public static final byte m1332coerceInb33U2AM(byte $this$coerceIn_u2db33U2AM, byte minimumValue, byte maximumValue) {
        if (Intrinsics.compare(minimumValue & UByte.MAX_VALUE, maximumValue & UByte.MAX_VALUE) > 0) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UByte.m141toStringimpl(maximumValue)) + " is less than minimum " + ((Object) UByte.m141toStringimpl(minimumValue)) + '.');
        }
        if (Intrinsics.compare($this$coerceIn_u2db33U2AM & UByte.MAX_VALUE, minimumValue & UByte.MAX_VALUE) < 0) {
            return minimumValue;
        }
        return Intrinsics.compare($this$coerceIn_u2db33U2AM & UByte.MAX_VALUE, maximumValue & UByte.MAX_VALUE) > 0 ? maximumValue : $this$coerceIn_u2db33U2AM;
    }

    /* JADX INFO: renamed from: coerceIn-VKSA0NQ, reason: not valid java name */
    public static final short m1330coerceInVKSA0NQ(short $this$coerceIn_u2dVKSA0NQ, short minimumValue, short maximumValue) {
        if (Intrinsics.compare(minimumValue & UShort.MAX_VALUE, maximumValue & UShort.MAX_VALUE) <= 0) {
            if (Intrinsics.compare($this$coerceIn_u2dVKSA0NQ & UShort.MAX_VALUE, minimumValue & UShort.MAX_VALUE) < 0) {
                return minimumValue;
            }
            return Intrinsics.compare($this$coerceIn_u2dVKSA0NQ & UShort.MAX_VALUE, 65535 & maximumValue) > 0 ? maximumValue : $this$coerceIn_u2dVKSA0NQ;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UShort.m404toStringimpl(maximumValue)) + " is less than minimum " + ((Object) UShort.m404toStringimpl(minimumValue)) + '.');
    }

    /* JADX INFO: renamed from: coerceIn-wuiCnnA, reason: not valid java name */
    public static final int m1334coerceInwuiCnnA(int $this$coerceIn_u2dwuiCnnA, ClosedRange<UInt> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt.coerceIn(UInt.m168boximpl($this$coerceIn_u2dwuiCnnA), (ClosedFloatingPointRange<UInt>) range)).getData();
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (Integer.compare($this$coerceIn_u2dwuiCnnA ^ Integer.MIN_VALUE, ((UInt) range.getStart()).getData() ^ Integer.MIN_VALUE) < 0) {
            return ((UInt) range.getStart()).getData();
        }
        return Integer.compare($this$coerceIn_u2dwuiCnnA ^ Integer.MIN_VALUE, ((UInt) range.getEndInclusive()).getData() ^ Integer.MIN_VALUE) > 0 ? ((UInt) range.getEndInclusive()).getData() : $this$coerceIn_u2dwuiCnnA;
    }

    /* JADX INFO: renamed from: coerceIn-JPwROB0, reason: not valid java name */
    public static final long m1329coerceInJPwROB0(long $this$coerceIn_u2dJPwROB0, ClosedRange<ULong> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt.coerceIn(ULong.m247boximpl($this$coerceIn_u2dJPwROB0), (ClosedFloatingPointRange<ULong>) range)).getData();
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (Long.compare($this$coerceIn_u2dJPwROB0 ^ Long.MIN_VALUE, ((ULong) range.getStart()).getData() ^ Long.MIN_VALUE) < 0) {
            return ((ULong) range.getStart()).getData();
        }
        return Long.compare($this$coerceIn_u2dJPwROB0 ^ Long.MIN_VALUE, ((ULong) range.getEndInclusive()).getData() ^ Long.MIN_VALUE) > 0 ? ((ULong) range.getEndInclusive()).getData() : $this$coerceIn_u2dJPwROB0;
    }
}
