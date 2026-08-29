package org.godotengine.godot.plugin;

import android.text.TextUtils;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SignalInfo {
    private final String name;
    private final Class<?>[] paramTypes;
    private final String[] paramTypesNames;

    public SignalInfo(String signalName, Class<?>... paramTypes) {
        if (TextUtils.isEmpty(signalName)) {
            throw new IllegalArgumentException("Invalid signal name: " + signalName);
        }
        this.name = signalName;
        Class<?>[] clsArr = paramTypes == null ? new Class[0] : paramTypes;
        this.paramTypes = clsArr;
        this.paramTypesNames = new String[clsArr.length];
        int i = 0;
        while (true) {
            Class<?>[] clsArr2 = this.paramTypes;
            if (i < clsArr2.length) {
                this.paramTypesNames[i] = clsArr2[i].getName();
                i++;
            } else {
                return;
            }
        }
    }

    public String getName() {
        return this.name;
    }

    Class<?>[] getParamTypes() {
        return this.paramTypes;
    }

    String[] getParamTypesNames() {
        return this.paramTypesNames;
    }

    public String toString() {
        return "SignalInfo{name='" + this.name + "', paramsTypes=" + Arrays.toString(this.paramTypes) + '}';
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof SignalInfo)) {
            return false;
        }
        SignalInfo that = (SignalInfo) o;
        return this.name.equals(that.name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }
}
