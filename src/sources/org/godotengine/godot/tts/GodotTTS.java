package org.godotengine.godot.tts;

import android.content.Context;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.speech.tts.Voice;
import java.util.LinkedList;
import java.util.Set;
import org.godotengine.godot.GodotLib;

/* JADX INFO: loaded from: classes2.dex */
public class GodotTTS extends UtteranceProgressListener {
    private static final int EVENT_BOUNDARY = 3;
    private static final int EVENT_CANCEL = 2;
    private static final int EVENT_END = 1;
    private static final int EVENT_START = 0;
    private final Context context;
    private GodotUtterance lastUtterance;
    private final Object lock = new Object();
    private boolean paused;
    private LinkedList<GodotUtterance> queue;
    private boolean speaking;
    private TextToSpeech synth;

    public GodotTTS(Context context) {
        this.context = context;
    }

    private void updateTTS() {
        if (!this.speaking && this.queue.size() > 0) {
            GodotUtterance message = this.queue.pollFirst();
            Set<Voice> voices = this.synth.getVoices();
            for (Voice v : voices) {
                if (v.getName().equals(message.voice)) {
                    this.synth.setVoice(v);
                    break;
                }
            }
            this.synth.setPitch(message.pitch);
            this.synth.setSpeechRate(message.rate);
            Bundle params = new Bundle();
            params.putFloat("volume", message.volume / 100.0f);
            this.lastUtterance = message;
            message.start = 0;
            this.lastUtterance.offset = 0;
            this.paused = false;
            this.synth.speak(message.text, 0, params, String.valueOf(message.id));
            this.speaking = true;
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onRangeStart(String utteranceId, int start, int end, int frame) {
        synchronized (this.lock) {
            if (this.lastUtterance != null && Integer.parseInt(utteranceId) == this.lastUtterance.id) {
                this.lastUtterance.offset = start;
                GodotLib.ttsCallback(3, this.lastUtterance.id, this.lastUtterance.start + start);
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onStop(String utteranceId, boolean interrupted) {
        synchronized (this.lock) {
            if (this.lastUtterance != null && !this.paused && Integer.parseInt(utteranceId) == this.lastUtterance.id) {
                GodotLib.ttsCallback(2, this.lastUtterance.id, 0);
                this.speaking = false;
                updateTTS();
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onStart(String utteranceId) {
        synchronized (this.lock) {
            GodotUtterance godotUtterance = this.lastUtterance;
            if (godotUtterance != null && godotUtterance.start == 0 && Integer.parseInt(utteranceId) == this.lastUtterance.id) {
                GodotLib.ttsCallback(0, this.lastUtterance.id, 0);
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onDone(String utteranceId) {
        synchronized (this.lock) {
            if (this.lastUtterance != null && !this.paused && Integer.parseInt(utteranceId) == this.lastUtterance.id) {
                GodotLib.ttsCallback(1, this.lastUtterance.id, 0);
                this.speaking = false;
                updateTTS();
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onError(String utteranceId, int errorCode) {
        synchronized (this.lock) {
            if (this.lastUtterance != null && !this.paused && Integer.parseInt(utteranceId) == this.lastUtterance.id) {
                GodotLib.ttsCallback(2, this.lastUtterance.id, 0);
                this.speaking = false;
                updateTTS();
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onError(String utteranceId) {
        synchronized (this.lock) {
            if (this.lastUtterance != null && !this.paused && Integer.parseInt(utteranceId) == this.lastUtterance.id) {
                GodotLib.ttsCallback(2, this.lastUtterance.id, 0);
                this.speaking = false;
                updateTTS();
            }
        }
    }

    public void init() {
        this.synth = new TextToSpeech(this.context, null);
        this.queue = new LinkedList<>();
        this.synth.setOnUtteranceProgressListener(this);
    }

    public void speak(String text, String voice, int volume, float pitch, float rate, int utterance_id, boolean interrupt) {
        synchronized (this.lock) {
            GodotUtterance message = new GodotUtterance(text, voice, volume, pitch, rate, utterance_id);
            this.queue.addLast(message);
            if (isPaused()) {
                resumeSpeaking();
            } else {
                updateTTS();
            }
        }
    }

    public void pauseSpeaking() {
        synchronized (this.lock) {
            if (!this.paused) {
                this.paused = true;
                this.synth.stop();
            }
        }
    }

    public void resumeSpeaking() {
        synchronized (this.lock) {
            if (this.lastUtterance != null && this.paused) {
                Set<Voice> voices = this.synth.getVoices();
                for (Voice v : voices) {
                    if (v.getName().equals(this.lastUtterance.voice)) {
                        this.synth.setVoice(v);
                        break;
                    }
                }
                this.synth.setPitch(this.lastUtterance.pitch);
                this.synth.setSpeechRate(this.lastUtterance.rate);
                Bundle params = new Bundle();
                params.putFloat("volume", this.lastUtterance.volume / 100.0f);
                GodotUtterance godotUtterance = this.lastUtterance;
                godotUtterance.start = godotUtterance.offset;
                this.lastUtterance.offset = 0;
                this.paused = false;
                this.synth.speak(this.lastUtterance.text.substring(this.lastUtterance.start), 0, params, String.valueOf(this.lastUtterance.id));
                this.speaking = true;
            } else {
                this.paused = false;
            }
        }
    }

    public void stopSpeaking() {
        synchronized (this.lock) {
            for (GodotUtterance u : this.queue) {
                GodotLib.ttsCallback(2, u.id, 0);
            }
            this.queue.clear();
            GodotUtterance godotUtterance = this.lastUtterance;
            if (godotUtterance != null) {
                GodotLib.ttsCallback(2, godotUtterance.id, 0);
            }
            this.lastUtterance = null;
            this.paused = false;
            this.speaking = false;
            this.synth.stop();
        }
    }

    public String[] getVoices() {
        Set<Voice> voices = this.synth.getVoices();
        String[] list = new String[voices.size()];
        int i = 0;
        for (Voice v : voices) {
            list[i] = v.getLocale().toString() + ";" + v.getName();
            i++;
        }
        return list;
    }

    public boolean isSpeaking() {
        return this.speaking;
    }

    public boolean isPaused() {
        return this.paused;
    }
}
