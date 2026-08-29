package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: androidx.fragment.app.BackStackState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel in) {
            return new BackStackState(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int size) {
            return new BackStackState[size];
        }
    };
    final List<String> mFragments;
    final List<BackStackRecordState> mTransactions;

    BackStackState(List<String> fragments, List<BackStackRecordState> transactions) {
        this.mFragments = fragments;
        this.mTransactions = transactions;
    }

    BackStackState(Parcel in) {
        this.mFragments = in.createStringArrayList();
        this.mTransactions = in.createTypedArrayList(BackStackRecordState.CREATOR);
    }

    List<BackStackRecord> instantiate(FragmentManager fm, Map<String, Fragment> pendingSavedFragments) {
        HashMap<String, Fragment> fragments = new HashMap<>(this.mFragments.size());
        for (String fWho : this.mFragments) {
            Fragment existingFragment = pendingSavedFragments.get(fWho);
            if (existingFragment != null) {
                fragments.put(existingFragment.mWho, existingFragment);
            } else {
                Bundle stateBundle = fm.getFragmentStore().setSavedState(fWho, null);
                if (stateBundle != null) {
                    ClassLoader classLoader = fm.getHost().getContext().getClassLoader();
                    FragmentState fs = (FragmentState) stateBundle.getParcelable("state");
                    Fragment fragment = fs.instantiate(fm.getFragmentFactory(), classLoader);
                    fragment.mSavedFragmentState = stateBundle;
                    if (fragment.mSavedFragmentState.getBundle("savedInstanceState") == null) {
                        fragment.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
                    }
                    Bundle arguments = stateBundle.getBundle("arguments");
                    if (arguments != null) {
                        arguments.setClassLoader(classLoader);
                    }
                    fragment.setArguments(arguments);
                    fragments.put(fragment.mWho, fragment);
                }
            }
        }
        ArrayList<BackStackRecord> transactions = new ArrayList<>();
        for (BackStackRecordState backStackRecordState : this.mTransactions) {
            transactions.add(backStackRecordState.instantiate(fm, fragments));
        }
        return transactions;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStringList(this.mFragments);
        dest.writeTypedList(this.mTransactions);
    }
}
