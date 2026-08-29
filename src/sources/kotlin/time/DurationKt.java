package kotlin.time;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b*\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001d\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0005H\u0002¢\u0006\u0002\u0010&\u001a\u0015\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u0010\u001a\u0015\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u0010\u001a\u0015\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u0010\u001a\u0015\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u0010\u001a\u0010\u0010/\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u0001H\u0002\u001a\u0010\u00100\u001a\u00020\u00012\u0006\u0010.\u001a\u00020\u0001H\u0002\u001a\u001d\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0002¢\u0006\u0002\u00106\u001a\u0010\u00107\u001a\u00020\u00012\u0006\u00102\u001a\u000203H\u0002\u001a)\u00108\u001a\u00020\u0005*\u0002032\u0006\u00109\u001a\u00020\u00052\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u0002050;H\u0082\b\u001a)\u0010=\u001a\u000203*\u0002032\u0006\u00109\u001a\u00020\u00052\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u0002050;H\u0082\b\u001a\u001c\u0010>\u001a\u00020\u0007*\u00020\b2\u0006\u0010?\u001a\u00020\u0007H\u0087\n¢\u0006\u0004\b@\u0010A\u001a\u001c\u0010>\u001a\u00020\u0007*\u00020\u00052\u0006\u0010?\u001a\u00020\u0007H\u0087\n¢\u0006\u0004\bB\u0010C\u001a\u0019\u0010D\u001a\u00020\u0007*\u00020\b2\u0006\u0010E\u001a\u00020FH\u0007¢\u0006\u0002\u0010G\u001a\u0019\u0010D\u001a\u00020\u0007*\u00020\u00052\u0006\u0010E\u001a\u00020FH\u0007¢\u0006\u0002\u0010H\u001a\u0019\u0010D\u001a\u00020\u0007*\u00020\u00012\u0006\u0010E\u001a\u00020FH\u0007¢\u0006\u0002\u0010I\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000\"\u001e\u0010\u0006\u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u001e\u0010\u0006\u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\t\u0010\r\u001a\u0004\b\u000b\u0010\u000e\"\u001e\u0010\u0006\u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\t\u0010\u000f\u001a\u0004\b\u000b\u0010\u0010\"\u001e\u0010\u0011\u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\n\u001a\u0004\b\u0013\u0010\f\"\u001e\u0010\u0011\u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000e\"\u001e\u0010\u0011\u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0010\"\u001e\u0010\u0014\u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\n\u001a\u0004\b\u0016\u0010\f\"\u001e\u0010\u0014\u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\r\u001a\u0004\b\u0016\u0010\u000e\"\u001e\u0010\u0014\u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0010\"\u001e\u0010\u0017\u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\n\u001a\u0004\b\u0019\u0010\f\"\u001e\u0010\u0017\u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\r\u001a\u0004\b\u0019\u0010\u000e\"\u001e\u0010\u0017\u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u000f\u001a\u0004\b\u0019\u0010\u0010\"\u001e\u0010\u001a\u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\n\u001a\u0004\b\u001c\u0010\f\"\u001e\u0010\u001a\u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u000e\"\u001e\u0010\u001a\u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u000f\u001a\u0004\b\u001c\u0010\u0010\"\u001e\u0010\u001d\u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\n\u001a\u0004\b\u001f\u0010\f\"\u001e\u0010\u001d\u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\r\u001a\u0004\b\u001f\u0010\u000e\"\u001e\u0010\u001d\u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u000f\u001a\u0004\b\u001f\u0010\u0010\"\u001e\u0010 \u001a\u00020\u0007*\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\n\u001a\u0004\b\"\u0010\f\"\u001e\u0010 \u001a\u00020\u0007*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\r\u001a\u0004\b\"\u0010\u000e\"\u001e\u0010 \u001a\u00020\u0007*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u000f\u001a\u0004\b\"\u0010\u0010¨\u0006J"}, d2 = {"MAX_MILLIS", "", "MAX_NANOS", "MAX_NANOS_IN_MILLIS", "NANOS_IN_MILLIS", "", "days", "Lkotlin/time/Duration;", "", "getDays$annotations", "(D)V", "getDays", "(D)J", "(I)V", "(I)J", "(J)V", "(J)J", "hours", "getHours$annotations", "getHours", "microseconds", "getMicroseconds$annotations", "getMicroseconds", "milliseconds", "getMilliseconds$annotations", "getMilliseconds", "minutes", "getMinutes$annotations", "getMinutes", "nanoseconds", "getNanoseconds$annotations", "getNanoseconds", "seconds", "getSeconds$annotations", "getSeconds", "durationOf", "normalValue", "unitDiscriminator", "(JI)J", "durationOfMillis", "normalMillis", "durationOfMillisNormalized", "millis", "durationOfNanos", "normalNanos", "durationOfNanosNormalized", "nanos", "millisToNanos", "nanosToMillis", "parseDuration", "value", "", "strictIso", "", "(Ljava/lang/String;Z)J", "parseOverLongIsoComponent", "skipWhile", "startIndex", "predicate", "Lkotlin/Function1;", "", "substringWhile", "times", "duration", "times-kIfJnKk", "(DJ)J", "times-mvk6XK0", "(IJ)J", "toDuration", "unit", "Lkotlin/time/DurationUnit;", "(DLkotlin/time/DurationUnit;)J", "(ILkotlin/time/DurationUnit;)J", "(JLkotlin/time/DurationUnit;)J", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final int NANOS_IN_MILLIS = 1000000;

    @Deprecated(message = "Use 'Double.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.days", imports = {"kotlin.time.Duration.Companion.days"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getDays$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.days", imports = {"kotlin.time.Duration.Companion.days"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getDays$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.days", imports = {"kotlin.time.Duration.Companion.days"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getDays$annotations(long j) {
    }

    @Deprecated(message = "Use 'Double.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getHours$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getHours$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getHours$annotations(long j) {
    }

    @Deprecated(message = "Use 'Double.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMicroseconds$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMicroseconds$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMicroseconds$annotations(long j) {
    }

    @Deprecated(message = "Use 'Double.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMilliseconds$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMilliseconds$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMilliseconds$annotations(long j) {
    }

    @Deprecated(message = "Use 'Double.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMinutes$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMinutes$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getMinutes$annotations(long j) {
    }

    @Deprecated(message = "Use 'Double.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getNanoseconds$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getNanoseconds$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getNanoseconds$annotations(long j) {
    }

    @Deprecated(message = "Use 'Double.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getSeconds$annotations(double d) {
    }

    @Deprecated(message = "Use 'Int.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getSeconds$annotations(int i) {
    }

    @Deprecated(message = "Use 'Long.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "this.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getSeconds$annotations(long j) {
    }

    public static final long toDuration(int $this$toDuration, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt.convertDurationUnitOverflow($this$toDuration, unit, DurationUnit.NANOSECONDS));
        }
        return toDuration($this$toDuration, unit);
    }

    public static final long toDuration(long $this$toDuration, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        long maxNsInUnit = DurationUnitKt.convertDurationUnitOverflow(MAX_NANOS, DurationUnit.NANOSECONDS, unit);
        if (new LongRange(-maxNsInUnit, maxNsInUnit).contains($this$toDuration)) {
            return durationOfNanos(DurationUnitKt.convertDurationUnitOverflow($this$toDuration, unit, DurationUnit.NANOSECONDS));
        }
        long millis = DurationUnitKt.convertDurationUnit($this$toDuration, unit, DurationUnit.MILLISECONDS);
        return durationOfMillis(RangesKt.coerceIn(millis, -4611686018427387903L, MAX_MILLIS));
    }

    public static final long toDuration(double $this$toDuration, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double valueInNs = DurationUnitKt.convertDurationUnit($this$toDuration, unit, DurationUnit.NANOSECONDS);
        if (!(!Double.isNaN(valueInNs))) {
            throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
        }
        long nanos = MathKt.roundToLong(valueInNs);
        if (new LongRange(-4611686018426999999L, MAX_NANOS).contains(nanos)) {
            long millis = durationOfNanos(nanos);
            return millis;
        }
        long millis2 = MathKt.roundToLong(DurationUnitKt.convertDurationUnit($this$toDuration, unit, DurationUnit.MILLISECONDS));
        return durationOfMillisNormalized(millis2);
    }

    /* JADX INFO: renamed from: times-mvk6XK0, reason: not valid java name */
    private static final long m1532timesmvk6XK0(int $this$times_u2dmvk6XK0, long duration) {
        return Duration.m1443timesUwyO8pc(duration, $this$times_u2dmvk6XK0);
    }

    /* JADX INFO: renamed from: times-kIfJnKk, reason: not valid java name */
    private static final long m1531timeskIfJnKk(double $this$times_u2dkIfJnKk, long duration) {
        return Duration.m1442timesUwyO8pc(duration, $this$times_u2dkIfJnKk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:183:0x00dc A[EDGE_INSN: B:183:0x00dc->B:52:0x00dc BREAK  A[LOOP:1: B:39:0x0082->B:50:0x00c1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c1 A[LOOP:1: B:39:0x0082->B:50:0x00c1, LOOP_END] */
    public static final long parseDuration(String value, boolean strictIso) {
        boolean isNegative;
        String nonDigitSymbols;
        String infinityString;
        boolean hasSign;
        boolean isNegative2;
        boolean z;
        int length = value.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        long result = Duration.INSTANCE.m1508getZEROUwyO8pc();
        String infinityString2 = "Infinity";
        char cCharAt = value.charAt(0);
        int index = cCharAt == '+' || cCharAt == '-' ? 0 + 1 : 0;
        boolean hasSign2 = index > 0;
        boolean isNegative3 = hasSign2 && StringsKt.startsWith$default((CharSequence) value, '-', false, 2, (Object) null);
        if (length <= index) {
            throw new IllegalArgumentException("No components");
        }
        if (value.charAt(index) == 'P') {
            int index2 = index + 1;
            if (index2 == length) {
                throw new IllegalArgumentException();
            }
            String nonDigitSymbols2 = "+-.";
            boolean isTimeComponent = false;
            DurationUnit prevUnit = null;
            while (index2 < length) {
                if (value.charAt(index2) == 'T') {
                    if (isTimeComponent || (index2 = index2 + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    isTimeComponent = true;
                } else {
                    int $i$f$substringWhile = 0;
                    String $this$skipWhile$iv$iv = value;
                    int i$iv$iv = index2;
                    while (true) {
                        int $i$f$substringWhile2 = $i$f$substringWhile;
                        int $i$f$substringWhile3 = $this$skipWhile$iv$iv.length();
                        if (i$iv$iv >= $i$f$substringWhile3) {
                            nonDigitSymbols = nonDigitSymbols2;
                            infinityString = infinityString2;
                            hasSign = hasSign2;
                            isNegative2 = isNegative3;
                            break;
                        }
                        isNegative2 = isNegative3;
                        String $this$skipWhile$iv$iv2 = $this$skipWhile$iv$iv;
                        char it = $this$skipWhile$iv$iv2.charAt(i$iv$iv);
                        infinityString = infinityString2;
                        hasSign = hasSign2;
                        if (!new CharRange('0', '9').contains(it)) {
                            nonDigitSymbols = nonDigitSymbols2;
                            if (!StringsKt.contains$default((CharSequence) nonDigitSymbols2, it, false, 2, (Object) null)) {
                                z = false;
                            }
                            if (z) {
                                break;
                            }
                            i$iv$iv++;
                            nonDigitSymbols2 = nonDigitSymbols;
                            infinityString2 = infinityString;
                            $i$f$substringWhile = $i$f$substringWhile2;
                            isNegative3 = isNegative2;
                            $this$skipWhile$iv$iv = $this$skipWhile$iv$iv2;
                            hasSign2 = hasSign;
                        } else {
                            nonDigitSymbols = nonDigitSymbols2;
                        }
                        z = true;
                        if (z) {
                            break;
                            break;
                        }
                        i$iv$iv++;
                        nonDigitSymbols2 = nonDigitSymbols;
                        infinityString2 = infinityString;
                        $i$f$substringWhile = $i$f$substringWhile2;
                        isNegative3 = isNegative2;
                        $this$skipWhile$iv$iv = $this$skipWhile$iv$iv2;
                        hasSign2 = hasSign;
                    }
                    Intrinsics.checkNotNull(value, "null cannot be cast to non-null type java.lang.String");
                    String component = value.substring(index2, i$iv$iv);
                    Intrinsics.checkNotNullExpressionValue(component, "substring(...)");
                    if (component.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int index3 = index2 + component.length();
                    String str = value;
                    if (index3 < 0 || index3 > StringsKt.getLastIndex(str)) {
                        throw new IllegalArgumentException("Missing unit for value " + component);
                    }
                    char unitChar = str.charAt(index3);
                    index2 = index3 + 1;
                    DurationUnit unit = DurationUnitKt.durationUnitByIsoChar(unitChar, isTimeComponent);
                    DurationUnit prevUnit2 = prevUnit;
                    if (prevUnit2 != null && prevUnit2.compareTo(unit) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    prevUnit = unit;
                    int dotIndex = StringsKt.indexOf$default((CharSequence) component, '.', 0, false, 6, (Object) null);
                    if (unit == DurationUnit.SECONDS && dotIndex > 0) {
                        Intrinsics.checkNotNull(component, "null cannot be cast to non-null type java.lang.String");
                        String whole = component.substring(0, dotIndex);
                        Intrinsics.checkNotNullExpressionValue(whole, "substring(...)");
                        long result2 = Duration.m1441plusLRDsOJo(result, toDuration(parseOverLongIsoComponent(whole), unit));
                        Intrinsics.checkNotNull(component, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring = component.substring(dotIndex);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        result = Duration.m1441plusLRDsOJo(result2, toDuration(Double.parseDouble(strSubstring), unit));
                        nonDigitSymbols2 = nonDigitSymbols;
                        infinityString2 = infinityString;
                        isNegative3 = isNegative2;
                        hasSign2 = hasSign;
                    } else {
                        result = Duration.m1441plusLRDsOJo(result, toDuration(parseOverLongIsoComponent(component), unit));
                        nonDigitSymbols2 = nonDigitSymbols;
                        infinityString2 = infinityString;
                        isNegative3 = isNegative2;
                        hasSign2 = hasSign;
                    }
                }
            }
            isNegative = isNegative3;
        } else {
            isNegative = isNegative3;
            if (!strictIso) {
                String str2 = "Unexpected order of duration components";
                if (StringsKt.regionMatches(value, index, "Infinity", 0, Math.max(length - index, "Infinity".length()), true)) {
                    result = Duration.INSTANCE.m1506getINFINITEUwyO8pc();
                } else {
                    DurationUnit prevUnit3 = null;
                    boolean afterFirst = false;
                    boolean allowSpaces = !hasSign2;
                    if (hasSign2 && value.charAt(index) == '(' && StringsKt.last(value) == ')') {
                        allowSpaces = true;
                        index++;
                        length--;
                        if (index == length) {
                            throw new IllegalArgumentException("No components");
                        }
                    }
                    while (index < length) {
                        if (afterFirst && allowSpaces) {
                            int i$iv = index;
                            while (i$iv < value.length()) {
                                boolean afterFirst2 = afterFirst;
                                if (!(value.charAt(i$iv) == ' ')) {
                                    break;
                                }
                                i$iv++;
                                afterFirst = afterFirst2;
                            }
                            index = i$iv;
                        }
                        boolean afterFirst3 = true;
                        int $i$f$substringWhile4 = 0;
                        String $this$skipWhile$iv$iv3 = value;
                        int i$iv$iv2 = index;
                        while (true) {
                            afterFirst = afterFirst3;
                            if (i$iv$iv2 >= $this$skipWhile$iv$iv3.length()) {
                                allowSpaces = allowSpaces;
                                break;
                            }
                            char it2 = $this$skipWhile$iv$iv3.charAt(i$iv$iv2);
                            allowSpaces = allowSpaces;
                            int $i$f$substringWhile5 = $i$f$substringWhile4;
                            String $this$skipWhile$iv$iv4 = $this$skipWhile$iv$iv3;
                            if (!(new CharRange('0', '9').contains(it2) || it2 == '.')) {
                                break;
                            }
                            i$iv$iv2++;
                            afterFirst3 = afterFirst;
                            $this$skipWhile$iv$iv3 = $this$skipWhile$iv$iv4;
                            allowSpaces = allowSpaces;
                            $i$f$substringWhile4 = $i$f$substringWhile5;
                        }
                        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type java.lang.String");
                        String component2 = value.substring(index, i$iv$iv2);
                        Intrinsics.checkNotNullExpressionValue(component2, "substring(...)");
                        if (component2.length() == 0) {
                            throw new IllegalArgumentException();
                        }
                        int index4 = index + component2.length();
                        int $i$f$substringWhile6 = 0;
                        String $this$skipWhile$iv$iv5 = value;
                        int i$iv$iv3 = index4;
                        while (i$iv$iv3 < $this$skipWhile$iv$iv5.length()) {
                            int $i$f$substringWhile7 = $i$f$substringWhile6;
                            String $this$skipWhile$iv$iv6 = $this$skipWhile$iv$iv5;
                            if (!new CharRange('a', 'z').contains($this$skipWhile$iv$iv5.charAt(i$iv$iv3))) {
                                break;
                            }
                            i$iv$iv3++;
                            $i$f$substringWhile6 = $i$f$substringWhile7;
                            $this$skipWhile$iv$iv5 = $this$skipWhile$iv$iv6;
                        }
                        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type java.lang.String");
                        String unitName = value.substring(index4, i$iv$iv3);
                        Intrinsics.checkNotNullExpressionValue(unitName, "substring(...)");
                        index = index4 + unitName.length();
                        DurationUnit unit2 = DurationUnitKt.durationUnitByShortName(unitName);
                        if (prevUnit3 != null && prevUnit3.compareTo(unit2) <= 0) {
                            throw new IllegalArgumentException(str2);
                        }
                        prevUnit3 = unit2;
                        int dotIndex2 = StringsKt.indexOf$default((CharSequence) component2, '.', 0, false, 6, (Object) null);
                        if (dotIndex2 > 0) {
                            Intrinsics.checkNotNull(component2, "null cannot be cast to non-null type java.lang.String");
                            String whole2 = component2.substring(0, dotIndex2);
                            Intrinsics.checkNotNullExpressionValue(whole2, "substring(...)");
                            String str3 = str2;
                            long result3 = Duration.m1441plusLRDsOJo(result, toDuration(Long.parseLong(whole2), unit2));
                            Intrinsics.checkNotNull(component2, "null cannot be cast to non-null type java.lang.String");
                            String strSubstring2 = component2.substring(dotIndex2);
                            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                            result = Duration.m1441plusLRDsOJo(result3, toDuration(Double.parseDouble(strSubstring2), unit2));
                            if (index < length) {
                                throw new IllegalArgumentException("Fractional component must be last");
                            }
                            str2 = str3;
                        } else {
                            result = Duration.m1441plusLRDsOJo(result, toDuration(Long.parseLong(component2), unit2));
                            str2 = str2;
                        }
                    }
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return isNegative ? Duration.m1458unaryMinusUwyO8pc(result) : result;
    }

    private static final long parseOverLongIsoComponent(String value) {
        boolean z;
        int length = value.length();
        int startIndex = 0;
        if (length > 0 && StringsKt.contains$default((CharSequence) "+-", value.charAt(0), false, 2, (Object) null)) {
            startIndex = 0 + 1;
        }
        if (length - startIndex > 16) {
            Iterable $this$all$iv = new IntRange(startIndex, StringsKt.getLastIndex(value));
            if (!($this$all$iv instanceof Collection) || !((Collection) $this$all$iv).isEmpty()) {
                Iterator it = $this$all$iv.iterator();
                while (true) {
                    if (it.hasNext()) {
                        int element$iv = ((IntIterator) it).nextInt();
                        if (!new CharRange('0', '9').contains(value.charAt(element$iv))) {
                            z = false;
                            break;
                        }
                    } else {
                        z = true;
                        break;
                    }
                }
            } else {
                z = true;
            }
            if (z) {
                return value.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
        }
        return StringsKt.startsWith$default(value, "+", false, 2, (Object) null) ? Long.parseLong(StringsKt.drop(value, 1)) : Long.parseLong(value);
    }

    private static final String substringWhile(String $this$substringWhile, int startIndex, Function1<? super Character, Boolean> function1) {
        int i$iv = startIndex;
        while (i$iv < $this$substringWhile.length() && function1.invoke(Character.valueOf($this$substringWhile.charAt(i$iv))).booleanValue()) {
            i$iv++;
        }
        Intrinsics.checkNotNull($this$substringWhile, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = $this$substringWhile.substring(startIndex, i$iv);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    private static final int skipWhile(String $this$skipWhile, int startIndex, Function1<? super Character, Boolean> function1) {
        int i = startIndex;
        while (i < $this$skipWhile.length() && function1.invoke(Character.valueOf($this$skipWhile.charAt(i))).booleanValue()) {
            i++;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long nanosToMillis(long nanos) {
        return nanos / ((long) NANOS_IN_MILLIS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long millisToNanos(long millis) {
        return ((long) NANOS_IN_MILLIS) * millis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanos(long normalNanos) {
        return Duration.m1405constructorimpl(normalNanos << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillis(long normalMillis) {
        return Duration.m1405constructorimpl((normalMillis << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOf(long normalValue, int unitDiscriminator) {
        return Duration.m1405constructorimpl((normalValue << 1) + ((long) unitDiscriminator));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanosNormalized(long nanos) {
        if (new LongRange(-4611686018426999999L, MAX_NANOS).contains(nanos)) {
            return durationOfNanos(nanos);
        }
        return durationOfMillis(nanosToMillis(nanos));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillisNormalized(long millis) {
        if (new LongRange(-4611686018426L, MAX_NANOS_IN_MILLIS).contains(millis)) {
            return durationOfNanos(millisToNanos(millis));
        }
        return durationOfMillis(RangesKt.coerceIn(millis, -4611686018427387903L, MAX_MILLIS));
    }
}
