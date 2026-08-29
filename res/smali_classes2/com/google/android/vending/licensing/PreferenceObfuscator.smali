.class public Lcom/google/android/vending/licensing/PreferenceObfuscator;
.super Ljava/lang/Object;
.source "PreferenceObfuscator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceObfuscator"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 1
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "o"    # Lcom/google/android/vending/licensing/Obfuscator;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    .line 41
    iput-object p2, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 79
    :cond_0
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    invoke-interface {v1, v0, p1}, Lcom/google/android/vending/licensing/Obfuscator;->unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/vending/licensing/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Lcom/google/android/vending/licensing/ValidationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation error while reading preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreferenceObfuscator"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move-object v1, p2

    .line 66
    .local v1, "result":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 69
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .line 71
    .restart local v1    # "result":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    invoke-interface {v0, p2, p1}, Lcom/google/android/vending/licensing/Obfuscator;->obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "obfuscatedValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    return-void
.end method
