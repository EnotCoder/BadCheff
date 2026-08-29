.class public Lorg/godotengine/godot/input/GodotTextInputWrapper;
.super Ljava/lang/Object;
.source "GodotTextInputWrapper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEdit:Lorg/godotengine/godot/input/GodotEditText;

.field private mHasSelection:Z

.field private mOriginText:Ljava/lang/String;

.field private final mRenderView:Lorg/godotengine/godot/GodotRenderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/GodotRenderView;Lorg/godotengine/godot/input/GodotEditText;)V
    .locals 0
    .param p1, "view"    # Lorg/godotengine/godot/GodotRenderView;
    .param p2, "edit"    # Lorg/godotengine/godot/input/GodotEditText;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 64
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    .line 65
    return-void
.end method

.method private isFullScreenEdit()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    .line 73
    .local v0, "textField":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 91
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "pCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 96
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v1}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v2

    const/16 v3, 0x43

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 97
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v1}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 99
    iget-boolean v1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mHasSelection:Z

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mHasSelection:Z

    .line 101
    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "pTextView"    # Landroid/widget/TextView;
    .param p2, "pActionID"    # I
    .param p3, "pKeyEvent"    # Landroid/view/KeyEvent;

    .line 125
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->isFullScreenEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 126
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "characters":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 130
    .local v2, "character":I
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v3}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 131
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v3}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 128
    .end local v2    # "character":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "characters":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v1

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 139
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 140
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "pCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 108
    new-array v0, p4, [I

    .line 109
    .local v0, "newChars":[I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    .line 110
    sub-int v2, v1, p2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v0, v2

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p4, :cond_2

    .line 113
    aget v8, v0, v1

    .line 114
    .local v8, "character":I
    const/16 v2, 0xa

    if-ne v8, v2, :cond_1

    iget-object v2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    invoke-virtual {v2}, Lorg/godotengine/godot/input/GodotEditText;->getKeyboardType()Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    move-result-object v2

    sget-object v3, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    if-eq v2, v3, :cond_1

    .line 116
    goto :goto_2

    .line 118
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v2}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 119
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v2}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 112
    .end local v8    # "character":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .locals 0
    .param p1, "originText"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mOriginText:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSelection(Z)V
    .locals 0
    .param p1, "selection"    # Z

    .line 82
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mHasSelection:Z

    .line 83
    return-void
.end method
