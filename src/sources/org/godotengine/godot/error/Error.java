package org.godotengine.godot.error;

import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Error.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b4\b\u0086\u0081\u0002\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00019B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8¨\u0006:"}, d2 = {"Lorg/godotengine/godot/error/Error;", "", "description", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toNativeValue", "", "toString", "OK", "FAILED", "ERR_UNAVAILABLE", "ERR_UNCONFIGURED", "ERR_UNAUTHORIZED", "ERR_PARAMETER_RANGE_ERROR", "ERR_OUT_OF_MEMORY", "ERR_FILE_NOT_FOUND", "ERR_FILE_BAD_DRIVE", "ERR_FILE_BAD_PATH", "ERR_FILE_NO_PERMISSION", "ERR_FILE_ALREADY_IN_USE", "ERR_FILE_CANT_OPEN", "ERR_FILE_CANT_WRITE", "ERR_FILE_CANT_READ", "ERR_FILE_UNRECOGNIZED", "ERR_FILE_CORRUPT", "ERR_FILE_MISSING_DEPENDENCIES", "ERR_FILE_EOF", "ERR_CANT_OPEN", "ERR_CANT_CREATE", "ERR_QUERY_FAILED", "ERR_ALREADY_IN_USE", "ERR_LOCKED", "ERR_TIMEOUT", "ERR_CANT_CONNECT", "ERR_CANT_RESOLVE", "ERR_CONNECTION_ERROR", "ERR_CANT_ACQUIRE_RESOURCE", "ERR_CANT_FORK", "ERR_INVALID_DATA", "ERR_INVALID_PARAMETER", "ERR_ALREADY_EXISTS", "ERR_DOES_NOT_EXIST", "ERR_DATABASE_CANT_READ", "ERR_DATABASE_CANT_WRITE", "ERR_COMPILATION_FAILED", "ERR_METHOD_NOT_FOUND", "ERR_LINK_FAILED", "ERR_SCRIPT_FAILED", "ERR_CYCLIC_LINK", "ERR_INVALID_DECLARATION", "ERR_DUPLICATE_SYMBOL", "ERR_PARSE_ERROR", "ERR_BUSY", "ERR_SKIP", "ERR_HELP", "ERR_BUG", "ERR_PRINTER_ON_FIRE", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum Error {
    OK("OK"),
    FAILED("Failed"),
    ERR_UNAVAILABLE("Unavailable"),
    ERR_UNCONFIGURED("Unconfigured"),
    ERR_UNAUTHORIZED("Unauthorized"),
    ERR_PARAMETER_RANGE_ERROR("Parameter out of range"),
    ERR_OUT_OF_MEMORY("Out of memory"),
    ERR_FILE_NOT_FOUND("File not found"),
    ERR_FILE_BAD_DRIVE("File: Bad drive"),
    ERR_FILE_BAD_PATH("File: Bad path"),
    ERR_FILE_NO_PERMISSION("File: Permission denied"),
    ERR_FILE_ALREADY_IN_USE("File already in use"),
    ERR_FILE_CANT_OPEN("Can't open file"),
    ERR_FILE_CANT_WRITE("Can't write file"),
    ERR_FILE_CANT_READ("Can't read file"),
    ERR_FILE_UNRECOGNIZED("File unrecognized"),
    ERR_FILE_CORRUPT("File corrupt"),
    ERR_FILE_MISSING_DEPENDENCIES("Missing dependencies for file"),
    ERR_FILE_EOF("End of file"),
    ERR_CANT_OPEN("Can't open"),
    ERR_CANT_CREATE("Can't create"),
    ERR_QUERY_FAILED("Query failed"),
    ERR_ALREADY_IN_USE("Already in use"),
    ERR_LOCKED("Locked"),
    ERR_TIMEOUT("Timeout"),
    ERR_CANT_CONNECT("Can't connect"),
    ERR_CANT_RESOLVE("Can't resolve"),
    ERR_CONNECTION_ERROR("Connection error"),
    ERR_CANT_ACQUIRE_RESOURCE("Can't acquire resource"),
    ERR_CANT_FORK("Can't fork"),
    ERR_INVALID_DATA("Invalid data"),
    ERR_INVALID_PARAMETER("Invalid parameter"),
    ERR_ALREADY_EXISTS("Already exists"),
    ERR_DOES_NOT_EXIST("Does not exist"),
    ERR_DATABASE_CANT_READ("Can't read database"),
    ERR_DATABASE_CANT_WRITE("Can't write database"),
    ERR_COMPILATION_FAILED("Compilation failed"),
    ERR_METHOD_NOT_FOUND("Method not found"),
    ERR_LINK_FAILED("Link failed"),
    ERR_SCRIPT_FAILED("Script failed"),
    ERR_CYCLIC_LINK("Cyclic link detected"),
    ERR_INVALID_DECLARATION("Invalid declaration"),
    ERR_DUPLICATE_SYMBOL("Duplicate symbol"),
    ERR_PARSE_ERROR("Parse error"),
    ERR_BUSY("Busy"),
    ERR_SKIP("Skip"),
    ERR_HELP("Help"),
    ERR_BUG("Bug"),
    ERR_PRINTER_ON_FIRE("Printer on fire");

    private final String description;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public static EnumEntries<Error> getEntries() {
        return $ENTRIES;
    }

    Error(String description) {
        this.description = description;
    }

    /* JADX INFO: compiled from: Error.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lorg/godotengine/godot/error/Error$Companion;", "", "()V", "fromNativeValue", "Lorg/godotengine/godot/error/Error;", "nativeValue", "", "fromNativeValue$lib_templateDebug", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Error fromNativeValue$lib_templateDebug(int nativeValue) {
            return (Error) CollectionsKt.getOrNull(Error.getEntries(), nativeValue);
        }
    }

    public final int toNativeValue() {
        return ordinal();
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.description;
    }
}
