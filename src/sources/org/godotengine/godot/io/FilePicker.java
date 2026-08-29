package org.godotengine.godot.io;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.godotengine.godot.GodotLib;
import org.godotengine.godot.io.file.MediaStoreData;

/* JADX INFO: compiled from: FilePicker.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lorg/godotengine/godot/io/FilePicker;", "", "()V", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilePicker {
    private static final int FILE_MODE_OPEN_ANY = 3;
    private static final int FILE_MODE_OPEN_DIR = 2;
    private static final int FILE_MODE_OPEN_FILE = 0;
    private static final int FILE_MODE_OPEN_FILES = 1;
    private static final int FILE_MODE_SAVE_FILE = 4;
    private static final int FILE_PICKER_REQUEST = 1000;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = FilePicker.class.getSimpleName();

    /* JADX INFO: compiled from: FilePicker.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002JE\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001eH\u0007¢\u0006\u0002\u0010\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lorg/godotengine/godot/io/FilePicker$Companion;", "", "()V", "FILE_MODE_OPEN_ANY", "", "FILE_MODE_OPEN_DIR", "FILE_MODE_OPEN_FILE", "FILE_MODE_OPEN_FILES", "FILE_MODE_SAVE_FILE", "FILE_PICKER_REQUEST", "TAG", "", "kotlin.jvm.PlatformType", "handleActivityResult", "", "context", "Landroid/content/Context;", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "resolveMimeType", "ext", "showFilePicker", "activity", "Landroid/app/Activity;", "currentDirectory", "filename", "fileMode", "filters", "", "(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void handleActivityResult(Context context, int requestCode, int resultCode, Intent data) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (requestCode == 1000) {
                if (resultCode == 0) {
                    Log.d(FilePicker.TAG, "File picker canceled");
                    GodotLib.filePickerCallback(false, new String[0]);
                    return;
                }
                if (resultCode == -1) {
                    List selectedPaths = new ArrayList();
                    ClipData clipData = data != null ? data.getClipData() : null;
                    if (clipData != null) {
                        int itemCount = clipData.getItemCount();
                        for (int i = 0; i < itemCount; i++) {
                            Uri uri = clipData.getItemAt(i).getUri();
                            if (uri != null) {
                                String filepath = MediaStoreData.INSTANCE.getFilePathFromUri(context, uri);
                                if (filepath == null) {
                                    Log.d(FilePicker.TAG, "null filepath URI: " + uri);
                                } else {
                                    selectedPaths.add(filepath);
                                }
                            }
                        }
                    } else {
                        Uri uri2 = data != null ? data.getData() : null;
                        if (uri2 != null) {
                            Uri it = uri2;
                            String filepath2 = MediaStoreData.INSTANCE.getFilePathFromUri(context, uri2);
                            if (filepath2 == null) {
                                Log.d(FilePicker.TAG, "null filepath URI: " + it);
                            } else {
                                selectedPaths.add(filepath2);
                            }
                        }
                    }
                    if (!selectedPaths.isEmpty()) {
                        List $this$toTypedArray$iv = selectedPaths;
                        GodotLib.filePickerCallback(true, (String[]) $this$toTypedArray$iv.toArray(new String[0]));
                    } else {
                        GodotLib.filePickerCallback(false, new String[0]);
                    }
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:31:0x00c8  */
        /* JADX WARN: Code duplicated, block: B:34:0x00d4  */
        public final void showFilePicker(Context context, Activity activity, String currentDirectory, String filename, int fileMode, String[] filters) {
            Intent intent;
            Object element$iv;
            String str;
            String it;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(currentDirectory, "currentDirectory");
            Intrinsics.checkNotNullParameter(filename, "filename");
            Intrinsics.checkNotNullParameter(filters, "filters");
            switch (fileMode) {
                case 2:
                    intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
                    break;
                case 3:
                default:
                    intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                    break;
                case 4:
                    intent = new Intent("android.intent.action.CREATE_DOCUMENT");
                    break;
            }
            Uri initialDirectory = MediaStoreData.INSTANCE.getUriFromDirectoryPath(context, currentDirectory);
            if (Build.VERSION.SDK_INT < 29 || initialDirectory == null) {
                Log.d(FilePicker.TAG, "Error cannot set initial directory");
            } else {
                intent.putExtra("android.provider.extra.INITIAL_URI", initialDirectory);
            }
            switch (fileMode) {
                case 1:
                    intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                    break;
                case 4:
                    intent.putExtra("android.intent.extra.TITLE", filename);
                    break;
            }
            if (fileMode != 2) {
                Collection destination$iv$iv = new ArrayList(filters.length);
                for (String str2 : filters) {
                    String it2 = FilePicker.INSTANCE.resolveMimeType(str2);
                    destination$iv$iv.add(it2);
                }
                List resolvedFilters = CollectionsKt.distinct((List) destination$iv$iv);
                List $this$firstOrNull$iv = resolvedFilters;
                Iterator it3 = $this$firstOrNull$iv.iterator();
                do {
                    if (it3.hasNext()) {
                        element$iv = it3.next();
                        it = (String) element$iv;
                    } else {
                        element$iv = null;
                    }
                    str = (String) element$iv;
                    if (str == null) {
                        str = "*/*";
                    }
                    intent.setType(str);
                    if (resolvedFilters.size() > 1) {
                        List $this$toTypedArray$iv = resolvedFilters;
                        intent.putExtra("android.intent.extra.MIME_TYPES", (String[]) $this$toTypedArray$iv.toArray(new String[0]));
                    }
                    intent.addCategory("android.intent.category.OPENABLE");
                } while (!(!Intrinsics.areEqual(it, "application/octet-stream")));
                str = (String) element$iv;
                if (str == null) {
                    str = "*/*";
                }
                intent.setType(str);
                if (resolvedFilters.size() > 1) {
                    List $this$toTypedArray$iv2 = resolvedFilters;
                    intent.putExtra("android.intent.extra.MIME_TYPES", (String[]) $this$toTypedArray$iv2.toArray(new String[0]));
                }
                intent.addCategory("android.intent.category.OPENABLE");
            }
            intent.putExtra("android.intent.extra.LOCAL_ONLY", true);
            if (activity != null) {
                activity.startActivityForResult(intent, 1000);
            }
        }

        private final String resolveMimeType(String ext) {
            MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
            String input = ext;
            if (StringsKt.contains$default((CharSequence) ext, (CharSequence) ".", false, 2, (Object) null)) {
                String strSubstring = ext.substring(StringsKt.indexOf$default((CharSequence) ext, ".", 0, false, 6, (Object) null) + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                input = strSubstring;
            }
            if (mimeTypeMap.hasMimeType(input)) {
                return input;
            }
            String resolvedMimeType = mimeTypeMap.getMimeTypeFromExtension(input);
            if (resolvedMimeType != null) {
                return resolvedMimeType;
            }
            if (!StringsKt.contains$default((CharSequence) input, (CharSequence) "/*", false, 2, (Object) null)) {
                return "application/octet-stream";
            }
            String category = StringsKt.substringBefore$default(input, "/*", (String) null, 2, (Object) null);
            switch (category.hashCode()) {
                case 93166550:
                    return !category.equals("audio") ? "application/octet-stream" : "audio/*";
                case 100313435:
                    return !category.equals("image") ? "application/octet-stream" : "image/*";
                case 112202875:
                    return !category.equals("video") ? "application/octet-stream" : "video/*";
                default:
                    return "application/octet-stream";
            }
        }
    }
}
