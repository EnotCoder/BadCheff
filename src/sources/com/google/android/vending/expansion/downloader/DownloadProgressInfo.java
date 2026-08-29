package com.google.android.vending.expansion.downloader;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadProgressInfo implements Parcelable {
    public static final Parcelable.Creator<DownloadProgressInfo> CREATOR = new Parcelable.Creator<DownloadProgressInfo>() { // from class: com.google.android.vending.expansion.downloader.DownloadProgressInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadProgressInfo createFromParcel(Parcel parcel) {
            return new DownloadProgressInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadProgressInfo[] newArray(int i) {
            return new DownloadProgressInfo[i];
        }
    };
    public float mCurrentSpeed;
    public long mOverallProgress;
    public long mOverallTotal;
    public long mTimeRemaining;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel p, int i) {
        p.writeLong(this.mOverallTotal);
        p.writeLong(this.mOverallProgress);
        p.writeLong(this.mTimeRemaining);
        p.writeFloat(this.mCurrentSpeed);
    }

    public DownloadProgressInfo(Parcel p) {
        this.mOverallTotal = p.readLong();
        this.mOverallProgress = p.readLong();
        this.mTimeRemaining = p.readLong();
        this.mCurrentSpeed = p.readFloat();
    }

    public DownloadProgressInfo(long overallTotal, long overallProgress, long timeRemaining, float currentSpeed) {
        this.mOverallTotal = overallTotal;
        this.mOverallProgress = overallProgress;
        this.mTimeRemaining = timeRemaining;
        this.mCurrentSpeed = currentSpeed;
    }
}
