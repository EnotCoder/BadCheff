package org.godotengine.godot.utils;

import java.security.MessageDigest;
import java.util.Random;
import kotlin.UByte;

/* JADX INFO: loaded from: classes2.dex */
public class Crypt {
    public static String md5(String input) {
        try {
            MessageDigest digest = MessageDigest.getInstance("MD5");
            digest.update(input.getBytes());
            byte[] messageDigest = digest.digest();
            StringBuilder hexString = new StringBuilder();
            for (byte b : messageDigest) {
                hexString.append(Integer.toHexString(b & UByte.MAX_VALUE));
            }
            return hexString.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String createRandomHash() {
        return md5(Long.toString(createRandomLong()));
    }

    public static long createAbsRandomLong() {
        return Math.abs(createRandomLong());
    }

    public static long createRandomLong() {
        Random r = new Random();
        return r.nextLong();
    }
}
