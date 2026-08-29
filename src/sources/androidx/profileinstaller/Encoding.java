package androidx.profileinstaller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import kotlin.UByte;

/* JADX INFO: loaded from: classes.dex */
class Encoding {
    static final int SIZEOF_BYTE = 8;
    static final int UINT_16_SIZE = 2;
    static final int UINT_32_SIZE = 4;
    static final int UINT_8_SIZE = 1;

    private Encoding() {
    }

    static int utf8Length(String s) {
        return s.getBytes(StandardCharsets.UTF_8).length;
    }

    static void writeUInt(OutputStream os, long value, int numberOfBytes) throws IOException {
        byte[] buffer = new byte[numberOfBytes];
        for (int i = 0; i < numberOfBytes; i++) {
            buffer[i] = (byte) ((value >> (i * 8)) & 255);
        }
        os.write(buffer);
    }

    static void writeUInt8(OutputStream os, int value) throws IOException {
        writeUInt(os, value, 1);
    }

    static void writeUInt16(OutputStream os, int value) throws IOException {
        writeUInt(os, value, 2);
    }

    static void writeUInt32(OutputStream os, long value) throws IOException {
        writeUInt(os, value, 4);
    }

    static void writeString(OutputStream os, String s) throws IOException {
        os.write(s.getBytes(StandardCharsets.UTF_8));
    }

    static int bitsToBytes(int numberOfBits) {
        return (((numberOfBits + 8) - 1) & (-8)) / 8;
    }

    static byte[] read(InputStream is, int length) throws IOException {
        byte[] buffer = new byte[length];
        int offset = 0;
        while (offset < length) {
            int result = is.read(buffer, offset, length - offset);
            if (result < 0) {
                throw error("Not enough bytes to read: " + length);
            }
            offset += result;
        }
        return buffer;
    }

    static long readUInt(InputStream is, int numberOfBytes) throws IOException {
        byte[] buffer = read(is, numberOfBytes);
        long value = 0;
        for (int i = 0; i < numberOfBytes; i++) {
            long next = buffer[i] & UByte.MAX_VALUE;
            value += next << (i * 8);
        }
        return value;
    }

    static int readUInt8(InputStream is) throws IOException {
        return (int) readUInt(is, 1);
    }

    static int readUInt16(InputStream is) throws IOException {
        return (int) readUInt(is, 2);
    }

    static long readUInt32(InputStream is) throws IOException {
        return readUInt(is, 4);
    }

    static String readString(InputStream is, int size) throws IOException {
        return new String(read(is, size), StandardCharsets.UTF_8);
    }

    static byte[] readCompressed(InputStream is, int compressedDataSize, int uncompressedDataSize) throws IOException {
        Inflater inf = new Inflater();
        try {
            byte[] result = new byte[uncompressedDataSize];
            int totalBytesRead = 0;
            int totalBytesInflated = 0;
            byte[] input = new byte[2048];
            while (!inf.finished() && !inf.needsDictionary() && totalBytesRead < compressedDataSize) {
                int bytesRead = is.read(input);
                if (bytesRead < 0) {
                    throw error("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + compressedDataSize + " bytes");
                }
                inf.setInput(input, 0, bytesRead);
                try {
                    totalBytesInflated += inf.inflate(result, totalBytesInflated, uncompressedDataSize - totalBytesInflated);
                    totalBytesRead += bytesRead;
                } catch (DataFormatException e) {
                    throw error(e.getMessage());
                }
            }
            if (totalBytesRead != compressedDataSize) {
                throw error("Didn't read enough bytes during decompression. expected=" + compressedDataSize + " actual=" + totalBytesRead);
            }
            if (!inf.finished()) {
                throw error("Inflater did not finish");
            }
            inf.end();
            return result;
        } catch (Throwable th) {
            inf.end();
            throw th;
        }
    }

    static void writeCompressed(OutputStream os, byte[] data) throws IOException {
        writeUInt32(os, data.length);
        byte[] outputData = compress(data);
        writeUInt32(os, outputData.length);
        os.write(outputData);
    }

    static byte[] compress(byte[] data) throws IOException {
        Deflater compressor = new Deflater(1);
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflater = new DeflaterOutputStream(out, compressor);
            try {
                deflater.write(data);
                deflater.close();
                compressor.end();
                return out.toByteArray();
            } catch (Throwable th) {
                try {
                    deflater.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            compressor.end();
            throw th3;
        }
    }

    static void writeAll(InputStream is, OutputStream os) throws IOException {
        byte[] buf = new byte[512];
        while (true) {
            int length = is.read(buf);
            if (length > 0) {
                os.write(buf, 0, length);
            } else {
                return;
            }
        }
    }

    static RuntimeException error(String message) {
        return new IllegalStateException(message);
    }
}
