package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import com.google.android.vending.expansion.downloader.Constants;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class LocaleListCompat {
    private static final LocaleListCompat sEmptyLocaleList = create(new Locale[0]);
    private final LocaleListInterface mImpl;

    private LocaleListCompat(LocaleListInterface impl) {
        this.mImpl = impl;
    }

    @Deprecated
    public static LocaleListCompat wrap(Object localeList) {
        return wrap((LocaleList) localeList);
    }

    public static LocaleListCompat wrap(LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    public Object unwrap() {
        return this.mImpl.getLocaleList();
    }

    public static LocaleListCompat create(Locale... localeList) {
        if (Build.VERSION.SDK_INT >= 24) {
            return wrap(Api24Impl.createLocaleList(localeList));
        }
        return new LocaleListCompat(new LocaleListCompatWrapper(localeList));
    }

    public Locale get(int index) {
        return this.mImpl.get(index);
    }

    public boolean isEmpty() {
        return this.mImpl.isEmpty();
    }

    public int size() {
        return this.mImpl.size();
    }

    public int indexOf(Locale locale) {
        return this.mImpl.indexOf(locale);
    }

    public String toLanguageTags() {
        return this.mImpl.toLanguageTags();
    }

    public Locale getFirstMatch(String[] supportedLocales) {
        return this.mImpl.getFirstMatch(supportedLocales);
    }

    public static LocaleListCompat getEmptyLocaleList() {
        return sEmptyLocaleList;
    }

    public static LocaleListCompat forLanguageTags(String list) {
        if (list == null || list.isEmpty()) {
            return getEmptyLocaleList();
        }
        String[] tags = list.split(",", -1);
        Locale[] localeArray = new Locale[tags.length];
        for (int i = 0; i < localeArray.length; i++) {
            localeArray[i] = Api21Impl.forLanguageTag(tags[i]);
        }
        return create(localeArray);
    }

    static Locale forLanguageTagCompat(String str) {
        if (str.contains(Constants.FILENAME_SEQUENCE_SEPARATOR)) {
            String[] args = str.split(Constants.FILENAME_SEQUENCE_SEPARATOR, -1);
            if (args.length > 2) {
                return new Locale(args[0], args[1], args[2]);
            }
            if (args.length > 1) {
                return new Locale(args[0], args[1]);
            }
            if (args.length == 1) {
                return new Locale(args[0]);
            }
        } else if (str.contains("_")) {
            String[] args2 = str.split("_", -1);
            if (args2.length > 2) {
                return new Locale(args2[0], args2[1], args2[2]);
            }
            if (args2.length > 1) {
                return new Locale(args2[0], args2[1]);
            }
            if (args2.length == 1) {
                return new Locale(args2[0]);
            }
        } else {
            return new Locale(str);
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static LocaleListCompat getAdjustedDefault() {
        return Build.VERSION.SDK_INT >= 24 ? wrap(Api24Impl.getAdjustedDefault()) : create(Locale.getDefault());
    }

    public static LocaleListCompat getDefault() {
        return Build.VERSION.SDK_INT >= 24 ? wrap(Api24Impl.getDefault()) : create(Locale.getDefault());
    }

    public boolean equals(Object other) {
        return (other instanceof LocaleListCompat) && this.mImpl.equals(((LocaleListCompat) other).mImpl);
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }

    public String toString() {
        return this.mImpl.toString();
    }

    static class Api24Impl {
        private Api24Impl() {
        }

        static LocaleList createLocaleList(Locale... list) {
            return new LocaleList(list);
        }

        static LocaleList getAdjustedDefault() {
            return LocaleList.getAdjustedDefault();
        }

        static LocaleList getDefault() {
            return LocaleList.getDefault();
        }
    }

    static class Api21Impl {
        private Api21Impl() {
        }

        static Locale forLanguageTag(String languageTag) {
            return Locale.forLanguageTag(languageTag);
        }
    }
}
