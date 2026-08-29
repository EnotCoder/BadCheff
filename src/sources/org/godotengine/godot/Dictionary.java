package org.godotengine.godot;

import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class Dictionary extends HashMap<String, Object> {
    protected String[] keys_cache;

    public String[] get_keys() {
        String[] ret = new String[size()];
        int i = 0;
        Set<String> keys = keySet();
        for (String key : keys) {
            ret[i] = key;
            i++;
        }
        return ret;
    }

    public Object[] get_values() {
        Object[] ret = new Object[size()];
        int i = 0;
        Set<String> keys = keySet();
        for (String key : keys) {
            ret[i] = get(key);
            i++;
        }
        return ret;
    }

    public void set_keys(String[] keys) {
        this.keys_cache = keys;
    }

    public void set_values(Object[] vals) {
        int i = 0;
        for (String key : this.keys_cache) {
            put(key, vals[i]);
            i++;
        }
        this.keys_cache = null;
    }
}
