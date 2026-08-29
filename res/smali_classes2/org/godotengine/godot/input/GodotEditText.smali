.class public Lorg/godotengine/godot/input/GodotEditText;
.super Landroid/widget/EditText;
.source "GodotEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/input/GodotEditText$EditHandler;,
        Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    }
.end annotation


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2


# instance fields
.field private mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

.field private mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field private mMaxInputLength:I

.field private mOriginText:Ljava/lang/String;

.field private mRenderView:Lorg/godotengine/godot/GodotRenderView;

.field private sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;


# direct methods
.method static bridge synthetic -$$Nest$mhandleMessage(Lorg/godotengine/godot/input/GodotEditText;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotEditText;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;-><init>(Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    .line 79
    const v0, 0x7fffffff

    iput v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 80
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 102
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->initView()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;-><init>(Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    .line 79
    const v0, 0x7fffffff

    iput v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 80
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 107
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->initView()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;-><init>(Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    .line 79
    const v0, 0x7fffffff

    iput v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 80
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 112
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->initView()V

    .line 113
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "input_method"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 190
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/godotengine/godot/input/GodotEditText;

    .line 192
    .local v0, "edit":Lorg/godotengine/godot/input/GodotEditText;
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {v0, v3}, Lorg/godotengine/godot/input/GodotEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v3}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    iget-object v2, v0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v2}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestFocus()Z

    goto/16 :goto_3

    .line 127
    .end local v0    # "edit":Lorg/godotengine/godot/input/GodotEditText;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/godotengine/godot/input/GodotEditText;

    .line 128
    .restart local v0    # "edit":Lorg/godotengine/godot/input/GodotEditText;
    iget-object v3, v0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 129
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {v0, v4}, Lorg/godotengine/godot/input/GodotEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotEditText;->setMaxInputLength(Landroid/widget/EditText;)V

    .line 132
    const-string v4, ""

    invoke-virtual {v0, v4}, Lorg/godotengine/godot/input/GodotEditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v3}, Lorg/godotengine/godot/input/GodotEditText;->append(Ljava/lang/CharSequence;)V

    .line 134
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 135
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 136
    .local v4, "selectionStart":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 137
    .local v5, "selectionEnd":I
    invoke-virtual {v0, v4, v5}, Lorg/godotengine/godot/input/GodotEditText;->setSelection(II)V

    .line 138
    iget-object v6, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->setSelection(Z)V

    .line 139
    .end local v4    # "selectionStart":I
    .end local v5    # "selectionEnd":I
    goto :goto_0

    .line 140
    :cond_0
    iget-object v4, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {v4, v2}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->setSelection(Z)V

    .line 143
    :goto_0
    const/4 v4, 0x1

    .line 144
    .local v4, "inputType":I
    const/4 v5, 0x0

    .line 145
    .local v5, "acceptCharacters":Ljava/lang/String;
    sget-object v6, Lorg/godotengine/godot/input/GodotEditText$1;->$SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->getKeyboardType()Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 169
    :pswitch_2
    const/16 v4, 0x11

    goto :goto_1

    .line 166
    :pswitch_3
    const/16 v4, 0x81

    .line 167
    goto :goto_1

    .line 163
    :pswitch_4
    const/16 v4, 0x21

    .line 164
    goto :goto_1

    .line 160
    :pswitch_5
    const/4 v4, 0x3

    .line 161
    goto :goto_1

    .line 156
    :pswitch_6
    const/16 v4, 0x3002

    .line 157
    const-string v5, "0123456789,.- "

    .line 158
    goto :goto_1

    .line 153
    :pswitch_7
    const/4 v4, 0x2

    .line 154
    goto :goto_1

    .line 150
    :pswitch_8
    const v4, 0x20001

    .line 151
    goto :goto_1

    .line 147
    :pswitch_9
    const/4 v4, 0x1

    .line 148
    nop

    .line 172
    :goto_1
    invoke-virtual {v0, v4}, Lorg/godotengine/godot/input/GodotEditText;->setInputType(I)V

    .line 174
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 175
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_1

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/godotengine/godot/input/GodotEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_2

    .line 178
    :cond_1
    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/godotengine/godot/input/GodotEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 182
    :cond_2
    :goto_2
    iget-object v6, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {v6, v3}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->setOriginText(Ljava/lang/String;)V

    .line 183
    iget-object v6, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {v0, v6}, Lorg/godotengine/godot/input/GodotEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v6, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v6}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 185
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 187
    .end local v0    # "edit":Lorg/godotengine/godot/input/GodotEditText;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "inputType":I
    .end local v5    # "acceptCharacters":Ljava/lang/String;
    :cond_3
    nop

    .line 198
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private needHandlingInGodot(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 259
    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 261
    .local v0, "isArrowKey":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 262
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 263
    .local v3, "isModifiedKey":Z
    :goto_3
    if-nez v0, :cond_4

    const/16 v4, 0x3d

    if-eq p1, v4, :cond_4

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private setMaxInputLength(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "p_edit_text"    # Landroid/widget/EditText;

    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 202
    .local v0, "filters":[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 203
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 204
    return-void
.end method


# virtual methods
.method public getKeyboardType()Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    return-object v0
.end method

.method public hasHardwareKeyboard()Z
    .locals 3

    .line 268
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 269
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 271
    .local v1, "hasHardwareKeyboardConfig":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 272
    return v2

    .line 275
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v2}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboard()Z

    move-result v2

    return v2
.end method

.method public hideKeyboard()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 314
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-virtual {v1, v0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/godotengine/godot/input/GodotEditText;->setPadding(IIII)V

    .line 117
    const v0, 0x10000006

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/input/GodotEditText;->setImeOptions(I)V

    .line 118
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 223
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 235
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/godotengine/godot/input/GodotEditText;->needHandlingInGodot(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 247
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 251
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/godotengine/godot/input/GodotEditText;->needHandlingInGodot(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setView(Lorg/godotengine/godot/GodotRenderView;)V
    .locals 2
    .param p1, "view"    # Lorg/godotengine/godot/GodotRenderView;

    .line 210
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 211
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lorg/godotengine/godot/input/GodotTextInputWrapper;

    iget-object v1, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    invoke-direct {v0, v1, p0}, Lorg/godotengine/godot/input/GodotTextInputWrapper;-><init>(Lorg/godotengine/godot/GodotRenderView;Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/input/GodotEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 215
    return-void
.end method

.method public showKeyboard(Ljava/lang/String;Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;III)V
    .locals 3
    .param p1, "p_existing_text"    # Ljava/lang/String;
    .param p2, "p_type"    # Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .param p3, "p_max_input_length"    # I
    .param p4, "p_cursor_start"    # I
    .param p5, "p_cursor_end"    # I

    .line 282
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    if-gtz p3, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    move v0, p3

    .line 287
    .local v0, "maxInputLength":I
    :goto_0
    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    .line 288
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 289
    iput v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    goto :goto_1

    .line 290
    :cond_2
    const/4 v2, 0x0

    if-ne p5, v1, :cond_3

    .line 291
    invoke-virtual {p1, v2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p4

    sub-int v1, v0, v1

    iput v1, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {p1, v2, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p5

    sub-int v1, v0, v1

    iput v1, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 298
    :goto_1
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 300
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 301
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 302
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 304
    iput p5, v1, Landroid/os/Message;->arg2:I

    .line 305
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-virtual {v2, v1}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void
.end method
