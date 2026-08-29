.class public final Lorg/godotengine/godot/plugin/SignalInfo;
.super Ljava/lang/Object;
.source "SignalInfo.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final paramTypesNames:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .param p1, "signalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iput-object p1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 53
    if-nez p2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    .line 54
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypesNames:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 56
    iget-object v2, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypesNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid signal name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    if-ne p0, p1, :cond_0

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    instance-of v0, p1, Lorg/godotengine/godot/plugin/SignalInfo;

    if-nez v0, :cond_1

    .line 87
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/godotengine/godot/plugin/SignalInfo;

    .line 92
    .local v0, "that":Lorg/godotengine/godot/plugin/SignalInfo;
    iget-object v1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method getParamTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method getParamTypesNames()[Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypesNames:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paramsTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    .line 77
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0
.end method
