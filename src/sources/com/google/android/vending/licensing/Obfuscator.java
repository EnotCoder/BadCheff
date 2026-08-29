package com.google.android.vending.licensing;

/* JADX INFO: loaded from: classes2.dex */
public interface Obfuscator {
    String obfuscate(String str, String str2);

    String unobfuscate(String str, String str2) throws ValidationException;
}
