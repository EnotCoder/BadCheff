package kotlin.ranges;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ClosedDoubleRange$$ExternalSyntheticBackport0 {
    public static /* synthetic */ int m(double d) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }
}
