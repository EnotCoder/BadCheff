package org.godotengine.godot.utils;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommandLineFileParser.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lorg/godotengine/godot/utils/CommandLineFileParser;", "", "()V", "decodeHeaderIntValue", "", "headerBytes", "", "parseCommandLine", "", "", "inputStream", "Ljava/io/InputStream;", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CommandLineFileParser {
    public final List<String> parseCommandLine(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        try {
            byte[] headerBytes = new byte[4];
            int argBytes = inputStream.read(headerBytes);
            if (argBytes < 4) {
                return new ArrayList();
            }
            int argc = decodeHeaderIntValue(headerBytes);
            ArrayList cmdline = new ArrayList(argc);
            for (int i = 0; i < argc; i++) {
                int argBytes2 = inputStream.read(headerBytes);
                if (argBytes2 < 4) {
                    return new ArrayList();
                }
                int strlen = decodeHeaderIntValue(headerBytes);
                if (strlen > 65535) {
                    return new ArrayList();
                }
                byte[] arg = new byte[strlen];
                int argBytes3 = inputStream.read(arg);
                if (argBytes3 == strlen) {
                    Charset UTF_8 = StandardCharsets.UTF_8;
                    Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                    cmdline.add(new String(arg, UTF_8));
                }
            }
            return cmdline;
        } catch (Exception e) {
            return new ArrayList();
        }
    }

    private final int decodeHeaderIntValue(byte[] headerBytes) {
        return ((headerBytes[3] & UByte.MAX_VALUE) << 24) | ((headerBytes[2] & UByte.MAX_VALUE) << 16) | ((headerBytes[1] & UByte.MAX_VALUE) << 8) | (headerBytes[0] & UByte.MAX_VALUE);
    }
}
