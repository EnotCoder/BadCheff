package org.godotengine.godot.input;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import java.util.Locale;
import org.godotengine.godot.GodotRenderView;

/* JADX INFO: loaded from: classes2.dex */
public class GodotEditText extends EditText {
    private static final int HANDLER_CLOSE_IME_KEYBOARD = 3;
    private static final int HANDLER_OPEN_IME_KEYBOARD = 2;
    private GodotTextInputWrapper mInputWrapper;
    private VirtualKeyboardType mKeyboardType;
    private int mMaxInputLength;
    private String mOriginText;
    private GodotRenderView mRenderView;
    private EditHandler sHandler;

    public enum VirtualKeyboardType {
        KEYBOARD_TYPE_DEFAULT,
        KEYBOARD_TYPE_MULTILINE,
        KEYBOARD_TYPE_NUMBER,
        KEYBOARD_TYPE_NUMBER_DECIMAL,
        KEYBOARD_TYPE_PHONE,
        KEYBOARD_TYPE_EMAIL_ADDRESS,
        KEYBOARD_TYPE_PASSWORD,
        KEYBOARD_TYPE_URL
    }

    private static class EditHandler extends Handler {
        private final WeakReference<GodotEditText> mEdit;

        public EditHandler(GodotEditText edit) {
            this.mEdit = new WeakReference<>(edit);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            GodotEditText edit = this.mEdit.get();
            if (edit != null) {
                edit.handleMessage(msg);
            }
        }
    }

    public GodotEditText(Context context) {
        super(context);
        this.sHandler = new EditHandler(this);
        this.mMaxInputLength = Integer.MAX_VALUE;
        this.mKeyboardType = VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT;
        initView();
    }

    public GodotEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.sHandler = new EditHandler(this);
        this.mMaxInputLength = Integer.MAX_VALUE;
        this.mKeyboardType = VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT;
        initView();
    }

    public GodotEditText(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.sHandler = new EditHandler(this);
        this.mMaxInputLength = Integer.MAX_VALUE;
        this.mKeyboardType = VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT;
        initView();
    }

    protected void initView() {
        setPadding(0, 0, 0, 0);
        setImeOptions(268435462);
    }

    public VirtualKeyboardType getKeyboardType() {
        return this.mKeyboardType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message msg) {
        switch (msg.what) {
            case 2:
                GodotEditText edit = (GodotEditText) msg.obj;
                String text = edit.mOriginText;
                if (edit.requestFocus()) {
                    edit.removeTextChangedListener(edit.mInputWrapper);
                    setMaxInputLength(edit);
                    edit.setText("");
                    edit.append(text);
                    if (msg.arg2 != -1) {
                        int selectionStart = Math.min(msg.arg1, edit.length());
                        int selectionEnd = Math.min(msg.arg2, edit.length());
                        edit.setSelection(selectionStart, selectionEnd);
                        edit.mInputWrapper.setSelection(true);
                    } else {
                        edit.mInputWrapper.setSelection(false);
                    }
                    int inputType = 1;
                    String acceptCharacters = null;
                    switch (AnonymousClass1.$SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[edit.getKeyboardType().ordinal()]) {
                        case 1:
                            inputType = 1;
                            break;
                        case 2:
                            inputType = 131073;
                            break;
                        case 3:
                            inputType = 2;
                            break;
                        case 4:
                            inputType = 12290;
                            acceptCharacters = "0123456789,.- ";
                            break;
                        case 5:
                            inputType = 3;
                            break;
                        case 6:
                            inputType = 33;
                            break;
                        case 7:
                            inputType = 129;
                            break;
                        case 8:
                            inputType = 17;
                            break;
                    }
                    edit.setInputType(inputType);
                    if (!TextUtils.isEmpty(acceptCharacters)) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            edit.setKeyListener(DigitsKeyListener.getInstance(Locale.getDefault()));
                        } else {
                            edit.setKeyListener(DigitsKeyListener.getInstance(acceptCharacters));
                        }
                    }
                    edit.mInputWrapper.setOriginText(text);
                    edit.addTextChangedListener(edit.mInputWrapper);
                    InputMethodManager imm = (InputMethodManager) this.mRenderView.getView().getContext().getSystemService("input_method");
                    imm.showSoftInput(edit, 0);
                }
                break;
            case 3:
                GodotEditText edit2 = (GodotEditText) msg.obj;
                edit2.removeTextChangedListener(this.mInputWrapper);
                InputMethodManager imm2 = (InputMethodManager) this.mRenderView.getView().getContext().getSystemService("input_method");
                imm2.hideSoftInputFromWindow(edit2.getWindowToken(), 0);
                edit2.mRenderView.getView().requestFocus();
                break;
        }
    }

    /* JADX INFO: renamed from: org.godotengine.godot.input.GodotEditText$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType;

        static {
            int[] iArr = new int[VirtualKeyboardType.values().length];
            $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType = iArr;
            try {
                iArr[VirtualKeyboardType.KEYBOARD_TYPE_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_MULTILINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_NUMBER_DECIMAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_PHONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_EMAIL_ADDRESS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_PASSWORD.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$GodotEditText$VirtualKeyboardType[VirtualKeyboardType.KEYBOARD_TYPE_URL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    private void setMaxInputLength(EditText p_edit_text) {
        InputFilter[] filters = {new InputFilter.LengthFilter(this.mMaxInputLength)};
        p_edit_text.setFilters(filters);
    }

    public void setView(GodotRenderView view) {
        this.mRenderView = view;
        if (this.mInputWrapper == null) {
            this.mInputWrapper = new GodotTextInputWrapper(this.mRenderView, this);
        }
        setOnEditorActionListener(this.mInputWrapper);
        view.getView().requestFocus();
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent keyEvent) {
        if (keyCode == 4) {
            this.mRenderView.getView().requestFocus();
        }
        if (hasHardwareKeyboard()) {
            return this.mRenderView.getInputHandler().onKeyDown(keyCode, keyEvent);
        }
        if (needHandlingInGodot(keyCode, keyEvent) && this.mRenderView.getInputHandler().onKeyDown(keyCode, keyEvent)) {
            return true;
        }
        return super.onKeyDown(keyCode, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent keyEvent) {
        if (hasHardwareKeyboard()) {
            return this.mRenderView.getInputHandler().onKeyUp(keyCode, keyEvent);
        }
        if (needHandlingInGodot(keyCode, keyEvent) && this.mRenderView.getInputHandler().onKeyUp(keyCode, keyEvent)) {
            return true;
        }
        return super.onKeyUp(keyCode, keyEvent);
    }

    private boolean needHandlingInGodot(int keyCode, KeyEvent keyEvent) {
        boolean isArrowKey = keyCode == 19 || keyCode == 20 || keyCode == 21 || keyCode == 22;
        boolean isModifiedKey = keyEvent.isAltPressed() || keyEvent.isCtrlPressed() || keyEvent.isSymPressed() || keyEvent.isFunctionPressed() || keyEvent.isMetaPressed();
        return isArrowKey || keyCode == 61 || KeyEvent.isModifierKey(keyCode) || isModifiedKey;
    }

    public boolean hasHardwareKeyboard() {
        Configuration config = getResources().getConfiguration();
        boolean hasHardwareKeyboardConfig = config.keyboard != 1 && config.hardKeyboardHidden == 1;
        if (hasHardwareKeyboardConfig) {
            return true;
        }
        return this.mRenderView.getInputHandler().hasHardwareKeyboard();
    }

    public void showKeyboard(String p_existing_text, VirtualKeyboardType p_type, int p_max_input_length, int p_cursor_start, int p_cursor_end) {
        if (hasHardwareKeyboard()) {
            return;
        }
        int maxInputLength = p_max_input_length <= 0 ? Integer.MAX_VALUE : p_max_input_length;
        if (p_cursor_start != -1) {
            if (p_cursor_end == -1) {
                this.mOriginText = p_existing_text.substring(0, p_cursor_start);
                this.mMaxInputLength = maxInputLength - (p_existing_text.length() - p_cursor_start);
            } else {
                this.mOriginText = p_existing_text.substring(0, p_cursor_end);
                this.mMaxInputLength = maxInputLength - (p_existing_text.length() - p_cursor_end);
            }
        } else {
            this.mOriginText = p_existing_text;
            this.mMaxInputLength = maxInputLength;
        }
        this.mKeyboardType = p_type;
        Message msg = new Message();
        msg.what = 2;
        msg.obj = this;
        msg.arg1 = p_cursor_start;
        msg.arg2 = p_cursor_end;
        this.sHandler.sendMessage(msg);
    }

    public void hideKeyboard() {
        if (hasHardwareKeyboard()) {
            return;
        }
        Message msg = new Message();
        msg.what = 3;
        msg.obj = this;
        this.sHandler.sendMessage(msg);
    }
}
