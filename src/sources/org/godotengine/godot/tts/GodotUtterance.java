package org.godotengine.godot.tts;

/* JADX INFO: loaded from: classes2.dex */
class GodotUtterance {
    final int id;
    final float pitch;
    final float rate;
    final String text;
    final String voice;
    final int volume;
    int offset = -1;
    int start = 0;

    GodotUtterance(String text, String voice, int volume, float pitch, float rate, int id) {
        this.text = text;
        this.voice = voice;
        this.volume = volume;
        this.pitch = pitch;
        this.rate = rate;
        this.id = id;
    }
}
