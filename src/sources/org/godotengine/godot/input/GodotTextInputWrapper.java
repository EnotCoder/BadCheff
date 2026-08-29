package org.godotengine.godot.input;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import org.godotengine.godot.GodotRenderView;

/* JADX INFO: loaded from: classes2.dex */
public class GodotTextInputWrapper implements TextWatcher, TextView.OnEditorActionListener {
    private static final String TAG = GodotTextInputWrapper.class.getSimpleName();
    private final GodotEditText mEdit;
    private boolean mHasSelection;
    private String mOriginText;
    private final GodotRenderView mRenderView;

    public GodotTextInputWrapper(GodotRenderView view, GodotEditText edit) {
        this.mRenderView = view;
        this.mEdit = edit;
    }

    private boolean isFullScreenEdit() {
        TextView textField = this.mEdit;
        InputMethodManager imm = (InputMethodManager) textField.getContext().getSystemService("input_method");
        return imm.isFullscreenMode();
    }

    public void setOriginText(String originText) {
        this.mOriginText = originText;
    }

    public void setSelection(boolean selection) {
        this.mHasSelection = selection;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable s) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence pCharSequence, int start, int count, int after) {
        for (int i = 0; i < count; i++) {
            this.mRenderView.getInputHandler().handleKeyEvent(67, 0, 0, true, false);
            this.mRenderView.getInputHandler().handleKeyEvent(67, 0, 0, false, false);
            if (this.mHasSelection) {
                this.mHasSelection = false;
                return;
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence pCharSequence, int start, int before, int count) {
        int[] newChars = new int[count];
        for (int i = start; i < start + count; i++) {
            newChars[i - start] = pCharSequence.charAt(i);
        }
        for (int i2 = 0; i2 < count; i2++) {
            int character = newChars[i2];
            if (character != 10 || this.mEdit.getKeyboardType() == GodotEditText.VirtualKeyboardType.KEYBOARD_TYPE_MULTILINE) {
                this.mRenderView.getInputHandler().handleKeyEvent(0, character, 0, true, false);
                this.mRenderView.getInputHandler().handleKeyEvent(0, character, 0, false, false);
            }
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView pTextView, int pActionID, KeyEvent pKeyEvent) {
        String characters;
        if (this.mEdit == pTextView && isFullScreenEdit() && pKeyEvent != null && (characters = pKeyEvent.getCharacters()) != null) {
            for (int i = 0; i < characters.length(); i++) {
                int character = characters.codePointAt(i);
                this.mRenderView.getInputHandler().handleKeyEvent(0, character, 0, true, false);
                this.mRenderView.getInputHandler().handleKeyEvent(0, character, 0, false, false);
            }
        }
        if (pActionID == 6) {
            this.mRenderView.getInputHandler().handleKeyEvent(66, 0, 0, true, false);
            this.mRenderView.getInputHandler().handleKeyEvent(66, 0, 0, false, false);
            this.mRenderView.getView().requestFocus();
            return true;
        }
        return false;
    }
}
