.class public Lorg/godotengine/godot/tts/GodotTTS;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "GodotTTS.java"


# static fields
.field private static final EVENT_BOUNDARY:I = 0x3

.field private static final EVENT_CANCEL:I = 0x2

.field private static final EVENT_END:I = 0x1

.field private static final EVENT_START:I


# instance fields
.field private final context:Landroid/content/Context;

.field private lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

.field private final lock:Ljava/lang/Object;

.field private paused:Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/godotengine/godot/tts/GodotUtterance;",
            ">;"
        }
    .end annotation
.end field

.field private speaking:Z

.field private synth:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->context:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private updateTTS()V
    .locals 7

    .line 80
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "mode":I
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/tts/GodotUtterance;

    .line 84
    .local v1, "message":Lorg/godotengine/godot/tts/GodotUtterance;
    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v2

    .line 85
    .local v2, "voices":Ljava/util/Set;, "Ljava/util/Set<Landroid/speech/tts/Voice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/speech/tts/Voice;

    .line 86
    .local v4, "v":Landroid/speech/tts/Voice;
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/godotengine/godot/tts/GodotUtterance;->voice:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    iget-object v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 88
    goto :goto_1

    .line 90
    .end local v4    # "v":Landroid/speech/tts/Voice;
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    iget v4, v1, Lorg/godotengine/godot/tts/GodotUtterance;->pitch:F

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 92
    iget-object v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    iget v4, v1, Lorg/godotengine/godot/tts/GodotUtterance;->rate:F

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 94
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v3, "params":Landroid/os/Bundle;
    iget v4, v1, Lorg/godotengine/godot/tts/GodotUtterance;->volume:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const-string v5, "volume"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 97
    iput-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 98
    const/4 v4, 0x0

    iput v4, v1, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 99
    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iput v4, v5, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 100
    iput-boolean v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 102
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    iget-object v5, v1, Lorg/godotengine/godot/tts/GodotUtterance;->text:Ljava/lang/String;

    iget v6, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 103
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 105
    .end local v0    # "mode":I
    .end local v1    # "message":Lorg/godotengine/godot/tts/GodotUtterance;
    .end local v2    # "voices":Ljava/util/Set;, "Ljava/util/Set<Landroid/speech/tts/Voice;>;"
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_2
    return-void
.end method


# virtual methods
.method public getVoices()[Ljava/lang/String;
    .locals 8

    .line 285
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v0

    .line 286
    .local v0, "voices":Ljava/util/Set;, "Ljava/util/Set<Landroid/speech/tts/Voice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 287
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 288
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/speech/tts/Voice;

    .line 289
    .local v4, "v":Landroid/speech/tts/Voice;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 290
    .end local v4    # "v":Landroid/speech/tts/Voice;
    move v2, v5

    goto :goto_0

    .line 291
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public init()V
    .locals 3

    .line 192
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 193
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 195
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 196
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    return v0
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 154
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 155
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 157
    :cond_0
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 182
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 183
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 185
    :cond_0
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 165
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    if-ne v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 168
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 169
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 171
    :cond_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "frame"    # I

    .line 112
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    if-ne v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iput p2, v1, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 115
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    add-int/2addr v2, p2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 117
    :cond_0
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 143
    :cond_0
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    .line 125
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v2, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 128
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 129
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 131
    :cond_0
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseSpeaking()V
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v1, :cond_0

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 221
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 223
    :cond_0
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeSpeaking()V
    .locals 8

    .line 230
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-eqz v1, :cond_2

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "mode":I
    iget-object v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v3

    .line 235
    .local v3, "voices":Ljava/util/Set;, "Ljava/util/Set<Landroid/speech/tts/Voice;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/speech/tts/Voice;

    .line 236
    .local v5, "v":Landroid/speech/tts/Voice;
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget-object v7, v7, Lorg/godotengine/godot/tts/GodotUtterance;->voice:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 238
    goto :goto_1

    .line 240
    .end local v5    # "v":Landroid/speech/tts/Voice;
    :cond_0
    goto :goto_0

    .line 241
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v5, v5, Lorg/godotengine/godot/tts/GodotUtterance;->pitch:F

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 242
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v5, v5, Lorg/godotengine/godot/tts/GodotUtterance;->rate:F

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 244
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v4, "params":Landroid/os/Bundle;
    const-string v5, "volume"

    iget-object v6, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v6, v6, Lorg/godotengine/godot/tts/GodotUtterance;->volume:I

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 247
    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v6, v5, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    iput v6, v5, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 248
    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iput v2, v5, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 249
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 251
    iget-object v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget-object v5, v5, Lorg/godotengine/godot/tts/GodotUtterance;->text:Ljava/lang/String;

    iget-object v6, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v6, v6, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget v6, v6, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v1, v4, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 253
    .end local v1    # "mode":I
    .end local v3    # "voices":Ljava/util/Set;, "Ljava/util/Set<Landroid/speech/tts/Voice;>;"
    .end local v4    # "params":Landroid/os/Bundle;
    goto :goto_2

    .line 254
    :cond_2
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 256
    :goto_2
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;IFFIZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "voice"    # Ljava/lang/String;
    .param p3, "volume"    # I
    .param p4, "pitch"    # F
    .param p5, "rate"    # F
    .param p6, "utterance_id"    # I
    .param p7, "interrupt"    # Z

    .line 202
    move-object v1, p0

    iget-object v2, v1, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    new-instance v0, Lorg/godotengine/godot/tts/GodotUtterance;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lorg/godotengine/godot/tts/GodotUtterance;-><init>(Ljava/lang/String;Ljava/lang/String;IFFI)V

    .line 204
    .local v0, "message":Lorg/godotengine/godot/tts/GodotUtterance;
    iget-object v3, v1, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lorg/godotengine/godot/tts/GodotTTS;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/godotengine/godot/tts/GodotTTS;->resumeSpeaking()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 211
    .end local v0    # "message":Lorg/godotengine/godot/tts/GodotUtterance;
    :goto_0
    monitor-exit v2

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSpeaking()V
    .locals 6

    .line 263
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/godotengine/godot/tts/GodotUtterance;

    .line 265
    .local v2, "u":Lorg/godotengine/godot/tts/GodotUtterance;
    iget v5, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    invoke-static {v3, v5, v4}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 266
    .end local v2    # "u":Lorg/godotengine/godot/tts/GodotUtterance;
    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 269
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_1

    .line 270
    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    invoke-static {v3, v1, v4}, Lorg/godotengine/godot/GodotLib;->ttsCallback(III)V

    .line 272
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 274
    iput-boolean v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 275
    iput-boolean v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 277
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
