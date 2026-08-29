package org.godotengine.godot.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.godotengine.godot.R;

/* JADX INFO: compiled from: DialogUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lorg/godotengine/godot/utils/DialogUtils;", "", "()V", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DialogUtils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = DialogUtils.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void dialogCallback(int i);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void inputDialogCallback(String str);

    /* JADX INFO: compiled from: DialogUtils.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0011\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0083 J\u0011\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0004H\u0083 J5\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u001cJ>\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\"R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lorg/godotengine/godot/utils/DialogUtils$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "addSwipeToDismiss", "", "view", "Landroid/view/View;", "popupWindow", "Landroid/widget/PopupWindow;", "dialogCallback", "buttonIndex", "", "inputDialogCallback", "text", "showDialog", "activity", "Landroid/app/Activity;", "title", "message", "buttons", "", "showDialog$lib_templateDebug", "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "showInputDialog", "existingText", "showInputDialog$lib_templateDebug", "showSnackbar", "duration", "", "actionText", "action", "Lkotlin/Function0;", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private final void dialogCallback(int buttonIndex) {
            DialogUtils.dialogCallback(buttonIndex);
        }

        @JvmStatic
        private final void inputDialogCallback(String text) {
            DialogUtils.inputDialogCallback(text);
        }

        private Companion() {
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, org.godotengine.godot.utils.DialogUtils$Companion$showDialog$dismissDialog$1] */
        public final void showDialog$lib_templateDebug(final Activity activity, final String title, final String message, final String[] buttons) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(buttons, "buttons");
            final Ref.ObjectRef dismissDialog = new Ref.ObjectRef();
            dismissDialog.element = new Function0<Unit>() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$showDialog$dismissDialog$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }
            };
            activity.runOnUiThread(new Runnable() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUtils.Companion.showDialog$lambda$2(activity, title, message, buttons, dismissDialog);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference failed for: r2v3, types: [T, org.godotengine.godot.utils.DialogUtils$Companion$showDialog$1$2] */
        public static final void showDialog$lambda$2(Activity activity, String title, String message, String[] buttons, final Ref.ObjectRef dismissDialog) {
            final int index;
            Intrinsics.checkNotNullParameter(activity, "$activity");
            Intrinsics.checkNotNullParameter(title, "$title");
            Intrinsics.checkNotNullParameter(message, "$message");
            Intrinsics.checkNotNullParameter(buttons, "$buttons");
            Intrinsics.checkNotNullParameter(dismissDialog, "$dismissDialog");
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setTitle(title);
            builder.setMessage(message);
            int buttonHeight = activity.getResources().getDimensionPixelSize(R.dimen.button_height);
            int paddingHorizontal = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_horizontal);
            int paddingVertical = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_vertical);
            int buttonPadding = activity.getResources().getDimensionPixelSize(R.dimen.button_padding);
            LinearLayout parentLayout = new LinearLayout(activity);
            parentLayout.setOrientation(1);
            parentLayout.setPadding(paddingHorizontal, paddingVertical, paddingHorizontal, paddingVertical);
            LinearLayout linearLayout = new LinearLayout(activity);
            linearLayout.setOrientation(0);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
            int availableWidth = screenWidth - (paddingHorizontal * 2);
            int maxButtonWidth = availableWidth / 2;
            int index$iv = 0;
            int length = buttons.length;
            int i = 0;
            while (i < length) {
                String str = buttons[i];
                int index$iv2 = index$iv + 1;
                int i2 = length;
                int paddingHorizontal2 = paddingHorizontal;
                Button button = new Button(activity);
                button.setText(str);
                button.setSingleLine(true);
                button.setPadding(buttonPadding, buttonPadding, buttonPadding, buttonPadding);
                button.measure(0, 0);
                int buttonWidth = button.getMeasuredWidth();
                int paddingVertical2 = paddingVertical;
                int buttonPadding2 = buttonPadding;
                int buttonPadding3 = buttonWidth > maxButtonWidth ? -1 : 0;
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(buttonPadding3, buttonHeight);
                params.weight = buttonWidth > maxButtonWidth ? 0.0f : 1.0f;
                button.setLayoutParams(params);
                if (buttonWidth > maxButtonWidth) {
                    if (linearLayout.getChildCount() > 0) {
                        parentLayout.addView(linearLayout);
                        linearLayout = new LinearLayout(activity);
                        linearLayout.setOrientation(0);
                    }
                    parentLayout.addView(button);
                    index = index$iv;
                } else {
                    buttonHeight = buttonHeight;
                    linearLayout.addView(button);
                    if (linearLayout.getChildCount() == 2) {
                        parentLayout.addView(linearLayout);
                        linearLayout = new LinearLayout(activity);
                        linearLayout.setOrientation(0);
                    }
                    index = index$iv;
                    if (index == buttons.length - 1 && linearLayout.getChildCount() > 0) {
                        parentLayout.addView(linearLayout);
                    }
                }
                button.setOnClickListener(new View.OnClickListener() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogUtils.Companion.showDialog$lambda$2$lambda$1$lambda$0(index, dismissDialog, view);
                    }
                });
                i++;
                index$iv = index$iv2;
                length = i2;
                paddingHorizontal = paddingHorizontal2;
                paddingVertical = paddingVertical2;
                buttonPadding = buttonPadding2;
                buttonHeight = buttonHeight;
            }
            builder.setView(parentLayout);
            final AlertDialog dialog = builder.create();
            dismissDialog.element = new Function0<Unit>() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$showDialog$1$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    dialog.dismiss();
                }
            };
            dialog.setCancelable(false);
            dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showDialog$lambda$2$lambda$1$lambda$0(int $index, Ref.ObjectRef dismissDialog, View it) {
            Intrinsics.checkNotNullParameter(dismissDialog, "$dismissDialog");
            DialogUtils.INSTANCE.dialogCallback($index);
            ((Function0) dismissDialog.element).invoke();
        }

        public final void showInputDialog$lib_templateDebug(final Activity activity, final String title, final String message, String existingText) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(existingText, "existingText");
            final EditText inputField = new EditText(activity);
            int paddingHorizontal = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_horizontal);
            int paddingVertical = activity.getResources().getDimensionPixelSize(R.dimen.dialog_padding_vertical);
            inputField.setPadding(paddingHorizontal, paddingVertical, paddingHorizontal, paddingVertical);
            inputField.setText(existingText);
            activity.runOnUiThread(new Runnable() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUtils.Companion.showInputDialog$lambda$4(activity, message, title, inputField);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showInputDialog$lambda$4(Activity activity, String message, String title, final EditText inputField) {
            Intrinsics.checkNotNullParameter(activity, "$activity");
            Intrinsics.checkNotNullParameter(message, "$message");
            Intrinsics.checkNotNullParameter(title, "$title");
            Intrinsics.checkNotNullParameter(inputField, "$inputField");
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setMessage(message).setTitle(title).setView(inputField);
            builder.setPositiveButton(R.string.dialog_ok, new DialogInterface.OnClickListener() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogUtils.Companion.showInputDialog$lambda$4$lambda$3(inputField, dialogInterface, i);
                }
            });
            AlertDialog dialog = builder.create();
            dialog.setCancelable(false);
            dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showInputDialog$lambda$4$lambda$3(EditText inputField, DialogInterface dialog, int id) {
            Intrinsics.checkNotNullParameter(inputField, "$inputField");
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            DialogUtils.INSTANCE.inputDialogCallback(inputField.getText().toString());
            dialog.dismiss();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void showSnackbar$default(Companion companion, Activity activity, String str, long j, String str2, Function0 function0, int i, Object obj) {
            if ((i & 4) != 0) {
                j = 3000;
            }
            companion.showSnackbar(activity, str, j, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : function0);
        }

        public final void showSnackbar(final Activity activity, final String message, final long duration, final String actionText, final Function0<Unit> action) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(message, "message");
            activity.runOnUiThread(new Runnable() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUtils.Companion.showSnackbar$lambda$7(activity, message, actionText, action, duration);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showSnackbar$lambda$7(Activity activity, String message, String $actionText, final Function0 $action, long $duration) {
            Intrinsics.checkNotNullParameter(activity, "$activity");
            Intrinsics.checkNotNullParameter(message, "$message");
            int bottomMargin = activity.getResources().getDimensionPixelSize(R.dimen.snackbar_bottom_margin);
            LayoutInflater inflater = LayoutInflater.from(activity);
            View customView = inflater.inflate(R.layout.snackbar, (ViewGroup) null);
            final PopupWindow popupWindow = new PopupWindow(customView, -1, -2);
            TextView messageView = (TextView) customView.findViewById(R.id.snackbar_text);
            messageView.setText(message);
            Button actionButton = (Button) customView.findViewById(R.id.snackbar_action);
            if ($actionText != null && $action != null) {
                actionButton.setText($actionText);
                actionButton.setVisibility(0);
                actionButton.setOnClickListener(new View.OnClickListener() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogUtils.Companion.showSnackbar$lambda$7$lambda$5($action, popupWindow, view);
                    }
                });
            } else {
                actionButton.setVisibility(8);
            }
            Companion companion = DialogUtils.INSTANCE;
            Intrinsics.checkNotNull(customView);
            companion.addSwipeToDismiss(customView, popupWindow);
            popupWindow.showAtLocation(customView, 80, 0, bottomMargin);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    DialogUtils.Companion.showSnackbar$lambda$7$lambda$6(popupWindow);
                }
            }, $duration);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showSnackbar$lambda$7$lambda$5(Function0 $action, PopupWindow popupWindow, View it) {
            Intrinsics.checkNotNullParameter(popupWindow, "$popupWindow");
            $action.invoke();
            popupWindow.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showSnackbar$lambda$7$lambda$6(PopupWindow popupWindow) {
            Intrinsics.checkNotNullParameter(popupWindow, "$popupWindow");
            popupWindow.dismiss();
        }

        private final void addSwipeToDismiss(View view, PopupWindow popupWindow) {
            view.setOnTouchListener(new DialogUtils$Companion$addSwipeToDismiss$1(view, popupWindow));
        }
    }
}
