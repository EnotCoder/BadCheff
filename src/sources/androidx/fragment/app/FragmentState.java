package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel in) {
            return new FragmentState(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int size) {
            return new FragmentState[size];
        }
    };
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final boolean mHidden;
    final int mMaxLifecycleState;
    final boolean mRemoving;
    final boolean mRetainInstance;
    final String mTag;
    final int mTargetRequestCode;
    final String mTargetWho;
    final boolean mUserVisibleHint;
    final String mWho;

    FragmentState(Fragment frag) {
        this.mClassName = frag.getClass().getName();
        this.mWho = frag.mWho;
        this.mFromLayout = frag.mFromLayout;
        this.mFragmentId = frag.mFragmentId;
        this.mContainerId = frag.mContainerId;
        this.mTag = frag.mTag;
        this.mRetainInstance = frag.mRetainInstance;
        this.mRemoving = frag.mRemoving;
        this.mDetached = frag.mDetached;
        this.mHidden = frag.mHidden;
        this.mMaxLifecycleState = frag.mMaxState.ordinal();
        this.mTargetWho = frag.mTargetWho;
        this.mTargetRequestCode = frag.mTargetRequestCode;
        this.mUserVisibleHint = frag.mUserVisibleHint;
    }

    FragmentState(Parcel in) {
        this.mClassName = in.readString();
        this.mWho = in.readString();
        this.mFromLayout = in.readInt() != 0;
        this.mFragmentId = in.readInt();
        this.mContainerId = in.readInt();
        this.mTag = in.readString();
        this.mRetainInstance = in.readInt() != 0;
        this.mRemoving = in.readInt() != 0;
        this.mDetached = in.readInt() != 0;
        this.mHidden = in.readInt() != 0;
        this.mMaxLifecycleState = in.readInt();
        this.mTargetWho = in.readString();
        this.mTargetRequestCode = in.readInt();
        this.mUserVisibleHint = in.readInt() != 0;
    }

    Fragment instantiate(FragmentFactory fragmentFactory, ClassLoader classLoader) {
        Fragment fragment = fragmentFactory.instantiate(classLoader, this.mClassName);
        fragment.mWho = this.mWho;
        fragment.mFromLayout = this.mFromLayout;
        fragment.mRestored = true;
        fragment.mFragmentId = this.mFragmentId;
        fragment.mContainerId = this.mContainerId;
        fragment.mTag = this.mTag;
        fragment.mRetainInstance = this.mRetainInstance;
        fragment.mRemoving = this.mRemoving;
        fragment.mDetached = this.mDetached;
        fragment.mHidden = this.mHidden;
        fragment.mMaxState = Lifecycle.State.values()[this.mMaxLifecycleState];
        fragment.mTargetWho = this.mTargetWho;
        fragment.mTargetRequestCode = this.mTargetRequestCode;
        fragment.mUserVisibleHint = this.mUserVisibleHint;
        return fragment;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.mClassName);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")}:");
        if (this.mFromLayout) {
            sb.append(" fromLayout");
        }
        if (this.mContainerId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mContainerId));
        }
        String str = this.mTag;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        if (this.mRetainInstance) {
            sb.append(" retainInstance");
        }
        if (this.mRemoving) {
            sb.append(" removing");
        }
        if (this.mDetached) {
            sb.append(" detached");
        }
        if (this.mHidden) {
            sb.append(" hidden");
        }
        if (this.mTargetWho != null) {
            sb.append(" targetWho=");
            sb.append(this.mTargetWho);
            sb.append(" targetRequestCode=");
            sb.append(this.mTargetRequestCode);
        }
        if (this.mUserVisibleHint) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClassName);
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mFromLayout ? 1 : 0);
        parcel.writeInt(this.mFragmentId);
        parcel.writeInt(this.mContainerId);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.mRetainInstance ? 1 : 0);
        parcel.writeInt(this.mRemoving ? 1 : 0);
        parcel.writeInt(this.mDetached ? 1 : 0);
        parcel.writeInt(this.mHidden ? 1 : 0);
        parcel.writeInt(this.mMaxLifecycleState);
        parcel.writeString(this.mTargetWho);
        parcel.writeInt(this.mTargetRequestCode);
        parcel.writeInt(this.mUserVisibleHint ? 1 : 0);
    }
}
