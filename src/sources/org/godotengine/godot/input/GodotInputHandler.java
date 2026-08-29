package org.godotengine.godot.input;

import android.content.Context;
import android.content.res.Configuration;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.input.InputManager;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.GestureDetector;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.WindowManager;
import androidx.core.location.LocationRequestCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotLib;

/* JADX INFO: loaded from: classes2.dex */
public class GodotInputHandler implements InputManager.InputDeviceListener, SensorEventListener {
    private static final int ROTARY_INPUT_HORIZONTAL_AXIS = 0;
    private static final int ROTARY_INPUT_VERTICAL_AXIS = 1;
    private static final String TAG = GodotInputHandler.class.getSimpleName();
    private final GestureDetector gestureDetector;
    private final Godot godot;
    private final GodotGestureHandler godotGestureHandler;
    private final InputManager mInputManager;
    private final ScaleGestureDetector scaleGestureDetector;
    private final WindowManager windowManager;
    private final SparseIntArray mJoystickIds = new SparseIntArray(4);
    private final SparseArray<Joystick> mJoysticksDevices = new SparseArray<>(4);
    private final HashSet<Integer> mHardwareKeyboardIds = new HashSet<>();
    private int lastSeenToolType = 0;
    private int rotaryInputAxis = 1;
    private int cachedRotation = -1;

    public GodotInputHandler(Context context, Godot godot) {
        this.godot = godot;
        InputManager inputManager = (InputManager) context.getSystemService("input");
        this.mInputManager = inputManager;
        inputManager.registerInputDeviceListener(this, null);
        this.windowManager = (WindowManager) context.getSystemService("window");
        GodotGestureHandler godotGestureHandler = new GodotGestureHandler(this);
        this.godotGestureHandler = godotGestureHandler;
        GestureDetector gestureDetector = new GestureDetector(context, godotGestureHandler);
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, godotGestureHandler);
        this.scaleGestureDetector = scaleGestureDetector;
        if (Build.VERSION.SDK_INT >= 23) {
            scaleGestureDetector.setStylusScaleEnabled(true);
        }
    }

    public void enableLongPress(boolean enable) {
        this.gestureDetector.setIsLongpressEnabled(enable);
    }

    public void enablePanningAndScalingGestures(boolean enable) {
        this.godotGestureHandler.setPanningAndScalingEnabled(enable);
    }

    private boolean shouldDispatchInputToRenderThread() {
        return GodotLib.shouldDispatchInputToRenderThread();
    }

    public void setRotaryInputAxis(int axis) {
        this.rotaryInputAxis = axis;
    }

    boolean hasHardwareKeyboard() {
        return !this.mHardwareKeyboardIds.isEmpty();
    }

    private boolean isKeyEventGameDevice(int source) {
        if (source == 769) {
            return false;
        }
        return (source & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232 || (source & InputDeviceCompat.SOURCE_DPAD) == 513 || (source & InputDeviceCompat.SOURCE_GAMEPAD) == 1025;
    }

    public boolean canCapturePointer() {
        return this.lastSeenToolType == 3;
    }

    public void onPointerCaptureChange(boolean hasCapture) {
        this.godotGestureHandler.onPointerCaptureChange(hasCapture);
    }

    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 24 || keyCode == 25) {
            return false;
        }
        int source = event.getSource();
        if (isKeyEventGameDevice(source)) {
            int deviceId = event.getDeviceId();
            if (this.mJoystickIds.indexOfKey(deviceId) >= 0) {
                int button = getGodotButton(keyCode);
                int godotJoyId = this.mJoystickIds.get(deviceId);
                handleJoystickButtonEvent(godotJoyId, button, false);
            }
        } else {
            int physical_keycode = event.getKeyCode();
            int unicode = event.getUnicodeChar();
            int key_label = event.getDisplayLabel();
            handleKeyEvent(physical_keycode, unicode, key_label, false, event.getRepeatCount() > 0);
        }
        return true;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 24 || keyCode == 25) {
            return false;
        }
        int source = event.getSource();
        int deviceId = event.getDeviceId();
        if (isKeyEventGameDevice(source)) {
            if (event.getRepeatCount() <= 0 && this.mJoystickIds.indexOfKey(deviceId) >= 0) {
                int button = getGodotButton(keyCode);
                int godotJoyId = this.mJoystickIds.get(deviceId);
                handleJoystickButtonEvent(godotJoyId, button, true);
            }
        } else {
            int physical_keycode = event.getKeyCode();
            int unicode = event.getUnicodeChar();
            int key_label = event.getDisplayLabel();
            handleKeyEvent(physical_keycode, unicode, key_label, true, event.getRepeatCount() > 0);
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent event) {
        this.lastSeenToolType = getEventToolType(event);
        this.scaleGestureDetector.onTouchEvent(event);
        if (this.gestureDetector.onTouchEvent(event) || this.godotGestureHandler.onMotionEvent(event) || event.getActionMasked() == 2) {
            return true;
        }
        if (isMouseEvent(event)) {
            return handleMouseEvent(event);
        }
        return handleTouchEvent(event);
    }

    public boolean onGenericMotionEvent(MotionEvent event) {
        this.lastSeenToolType = getEventToolType(event);
        if (event.isFromSource(InputDeviceCompat.SOURCE_JOYSTICK) && event.getActionMasked() == 2) {
            int deviceId = event.getDeviceId();
            if (this.mJoystickIds.indexOfKey(deviceId) >= 0) {
                int godotJoyId = this.mJoystickIds.get(deviceId);
                Joystick joystick = this.mJoysticksDevices.get(deviceId);
                if (joystick == null) {
                    return true;
                }
                for (int i = 0; i < joystick.axes.size(); i++) {
                    int axis = joystick.axes.get(i).intValue();
                    float value = event.getAxisValue(axis);
                    if (joystick.axesValues.indexOfKey(axis) < 0 || joystick.axesValues.get(axis).floatValue() != value) {
                        joystick.axesValues.put(axis, Float.valueOf(value));
                        handleJoystickAxisEvent(godotJoyId, i, value);
                    }
                }
                if (joystick.hasAxisHat) {
                    int hatX = Math.round(event.getAxisValue(15));
                    int hatY = Math.round(event.getAxisValue(16));
                    if (joystick.hatX != hatX || joystick.hatY != hatY) {
                        joystick.hatX = hatX;
                        joystick.hatY = hatY;
                        handleJoystickHatEvent(godotJoyId, hatX, hatY);
                    }
                }
                return true;
            }
            return false;
        }
        if ((Build.VERSION.SDK_INT < 23 || !this.gestureDetector.onGenericMotionEvent(event)) && !this.godotGestureHandler.onMotionEvent(event)) {
            return handleMouseEvent(event);
        }
        return true;
    }

    public void initInputDevices() {
        int[] deviceIds = this.mInputManager.getInputDeviceIds();
        for (int deviceId : deviceIds) {
            InputDevice device = this.mInputManager.getInputDevice(deviceId);
            if (device != null) {
                onInputDeviceAdded(deviceId);
            }
        }
    }

    private int assignJoystickIdNumber(int deviceId) {
        int godotJoyId = 0;
        while (this.mJoystickIds.indexOfValue(godotJoyId) >= 0) {
            godotJoyId++;
        }
        this.mJoystickIds.put(deviceId, godotJoyId);
        return godotJoyId;
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceAdded(int deviceId) {
        InputDevice device;
        if (this.mJoystickIds.indexOfKey(deviceId) >= 0 || (device = this.mInputManager.getInputDevice(deviceId)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29 && device.supportsSource(InputDeviceCompat.SOURCE_KEYBOARD) && device.isExternal() && device.getKeyboardType() == 2) {
            this.mHardwareKeyboardIds.add(Integer.valueOf(deviceId));
        }
        if (!device.supportsSource(InputDeviceCompat.SOURCE_GAMEPAD) && !device.supportsSource(InputDeviceCompat.SOURCE_JOYSTICK)) {
            return;
        }
        int id = assignJoystickIdNumber(deviceId);
        Joystick joystick = new Joystick();
        joystick.device_id = deviceId;
        joystick.name = device.getName();
        Log.i(TAG, "=== New Input Device: " + joystick.name);
        Set<Integer> already = new HashSet<>();
        for (InputDevice.MotionRange range : device.getMotionRanges()) {
            boolean isJoystick = range.isFromSource(InputDeviceCompat.SOURCE_JOYSTICK);
            boolean isGamepad = range.isFromSource(InputDeviceCompat.SOURCE_GAMEPAD);
            if (isJoystick || isGamepad) {
                int axis = range.getAxis();
                if (axis == 15 || axis == 16) {
                    joystick.hasAxisHat = true;
                } else if (!already.contains(Integer.valueOf(axis))) {
                    already.add(Integer.valueOf(axis));
                    joystick.axes.add(Integer.valueOf(axis));
                } else {
                    Log.w(TAG, " - DUPLICATE AXIS VALUE IN LIST: " + axis);
                }
            }
        }
        Collections.sort(joystick.axes);
        for (int idx = 0; idx < joystick.axes.size(); idx++) {
            Log.i(TAG, " - Mapping Android axis " + joystick.axes.get(idx) + " to Godot axis " + idx);
        }
        this.mJoysticksDevices.put(deviceId, joystick);
        handleJoystickConnectionChangedEvent(id, true, joystick.name);
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceRemoved(int deviceId) {
        this.mHardwareKeyboardIds.remove(Integer.valueOf(deviceId));
        if (this.mJoystickIds.indexOfKey(deviceId) < 0) {
            return;
        }
        int godotJoyId = this.mJoystickIds.get(deviceId);
        this.mJoystickIds.delete(deviceId);
        this.mJoysticksDevices.delete(deviceId);
        handleJoystickConnectionChangedEvent(godotJoyId, false, "");
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceChanged(int deviceId) {
        onInputDeviceRemoved(deviceId);
        onInputDeviceAdded(deviceId);
    }

    public static int getGodotButton(int keyCode) {
        switch (keyCode) {
            case 19:
                return 11;
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                return 12;
            case MotionEventCompat.AXIS_WHEEL /* 21 */:
                return 13;
            case MotionEventCompat.AXIS_GAS /* 22 */:
                return 14;
            case 96:
                return 0;
            case 97:
                return 1;
            case 98:
                return 17;
            case 99:
                return 2;
            case LocationRequestCompat.QUALITY_HIGH_ACCURACY /* 100 */:
                return 3;
            case 101:
                return 18;
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                return 9;
            case 103:
                return 10;
            case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                return 15;
            case 105:
                return 16;
            case 106:
                return 7;
            case 107:
                return 8;
            case 108:
                return 6;
            case 109:
                return 4;
            default:
                int button = (keyCode - 188) + 20;
                return button;
        }
    }

    static int getEventToolType(MotionEvent event) {
        if (event.getPointerCount() > 0) {
            return event.getToolType(0);
        }
        return 0;
    }

    static boolean isMouseEvent(MotionEvent event) {
        int toolType = getEventToolType(event);
        int eventSource = event.getSource();
        boolean mouseSource = true;
        switch (toolType) {
            case 1:
                return false;
            case 2:
            case 3:
            case 4:
                return true;
            default:
                boolean mouseSource2 = (eventSource & 8194) == 8194 || (eventSource & 20482) == 16386;
                if (Build.VERSION.SDK_INT >= 26) {
                    if (!mouseSource2 && (eventSource & 131076) != 131076) {
                        mouseSource = false;
                    }
                    return mouseSource;
                }
                return mouseSource2;
        }
    }

    boolean handleMotionEvent(MotionEvent event) {
        return handleMotionEvent(event, event.getActionMasked());
    }

    boolean handleMotionEvent(MotionEvent event, int eventActionOverride) {
        return handleMotionEvent(event, eventActionOverride, false);
    }

    boolean handleMotionEvent(MotionEvent event, int eventActionOverride, boolean doubleTap) {
        if (isMouseEvent(event)) {
            return handleMouseEvent(event, eventActionOverride, doubleTap);
        }
        return handleTouchEvent(event, eventActionOverride, doubleTap);
    }

    static float getEventTiltX(MotionEvent event) {
        float orientation = event.getOrientation();
        float tilt = event.getAxisValue(25);
        float tiltMult = (float) Math.sin(tilt);
        return ((float) (-Math.sin(orientation))) * tiltMult;
    }

    static float getEventTiltY(MotionEvent event) {
        float orientation = event.getOrientation();
        float tilt = event.getAxisValue(25);
        float tiltMult = (float) Math.sin(tilt);
        return ((float) Math.cos(orientation)) * tiltMult;
    }

    boolean handleMouseEvent(MotionEvent event) {
        return handleMouseEvent(event, event.getActionMasked());
    }

    boolean handleMouseEvent(MotionEvent event, int eventActionOverride) {
        return handleMouseEvent(event, eventActionOverride, false);
    }

    boolean handleMouseEvent(MotionEvent event, int eventActionOverride, boolean doubleTap) {
        return handleMouseEvent(event, eventActionOverride, event.getButtonState(), doubleTap);
    }

    boolean handleMouseEvent(MotionEvent event, int eventActionOverride, int buttonMaskOverride, boolean doubleTap) {
        float verticalFactor;
        float horizontalFactor;
        boolean sourceMouseRelative;
        float x = event.getX();
        float y = event.getY();
        float pressure = event.getPressure();
        if (!event.isFromSource(4194304)) {
            float verticalFactor2 = event.getAxisValue(9);
            float horizontalFactor2 = event.getAxisValue(10);
            verticalFactor = verticalFactor2;
            horizontalFactor = horizontalFactor2;
        } else if (this.rotaryInputAxis == 0) {
            float horizontalFactor3 = -event.getAxisValue(26);
            verticalFactor = 0.0f;
            horizontalFactor = horizontalFactor3;
        } else {
            float verticalFactor3 = -event.getAxisValue(26);
            verticalFactor = verticalFactor3;
            horizontalFactor = 0.0f;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            boolean sourceMouseRelative2 = event.isFromSource(131076);
            sourceMouseRelative = sourceMouseRelative2;
        } else {
            sourceMouseRelative = false;
        }
        return handleMouseEvent(eventActionOverride, buttonMaskOverride, x, y, horizontalFactor, verticalFactor, doubleTap, sourceMouseRelative, pressure, getEventTiltX(event), getEventTiltY(event));
    }

    boolean handleMouseEvent(int eventAction, boolean sourceMouseRelative) {
        return handleMouseEvent(eventAction, 0, 0.0f, 0.0f, 0.0f, 0.0f, false, sourceMouseRelative, 1.0f, 0.0f, 0.0f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0014  */
    boolean handleMouseEvent(int eventAction, int buttonsMask, float x, float y, float deltaX, float deltaY, boolean doubleClick, boolean sourceMouseRelative, float pressure, float tiltX, float tiltY) {
        int buttonsMask2;
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return false;
        }
        switch (eventAction) {
            case 0:
            case 2:
                if (buttonsMask == 0) {
                    buttonsMask2 = 1;
                } else {
                    buttonsMask2 = buttonsMask;
                }
                break;
            case 1:
            case 3:
                buttonsMask2 = 0;
                break;
            default:
                buttonsMask2 = buttonsMask;
                break;
        }
        switch (eventAction) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 7:
            case 8:
            case 9:
            case 10:
                runnable.setMouseEvent(eventAction, buttonsMask2, x, y, deltaX, deltaY, doubleClick, sourceMouseRelative, pressure, tiltX, tiltY);
                dispatchInputEventRunnable(runnable);
                return true;
            case 4:
            case 5:
            case 6:
            default:
                return false;
        }
    }

    boolean handleTouchEvent(MotionEvent event) {
        return handleTouchEvent(event, event.getActionMasked());
    }

    boolean handleTouchEvent(MotionEvent event, int eventActionOverride) {
        return handleTouchEvent(event, eventActionOverride, false);
    }

    boolean handleTouchEvent(MotionEvent event, int eventActionOverride, boolean doubleTap) {
        if (event.getPointerCount() == 0) {
            return true;
        }
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return false;
        }
        switch (eventActionOverride) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
                runnable.setTouchEvent(event, eventActionOverride, doubleTap);
                dispatchInputEventRunnable(runnable);
                return true;
            case 4:
            default:
                return false;
        }
    }

    void handleMagnifyEvent(float x, float y, float factor) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setMagnifyEvent(x, y, factor);
        dispatchInputEventRunnable(runnable);
    }

    void handlePanEvent(float x, float y, float deltaX, float deltaY) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setPanEvent(x, y, deltaX, deltaY);
        dispatchInputEventRunnable(runnable);
    }

    private void handleJoystickButtonEvent(int device, int button, boolean pressed) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setJoystickButtonEvent(device, button, pressed);
        dispatchInputEventRunnable(runnable);
    }

    private void handleJoystickAxisEvent(int device, int axis, float value) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setJoystickAxisEvent(device, axis, value);
        dispatchInputEventRunnable(runnable);
    }

    private void handleJoystickHatEvent(int device, int hatX, int hatY) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setJoystickHatEvent(device, hatX, hatY);
        dispatchInputEventRunnable(runnable);
    }

    private void handleJoystickConnectionChangedEvent(int device, boolean connected, String name) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setJoystickConnectionChangedEvent(device, connected, name);
        dispatchInputEventRunnable(runnable);
    }

    void handleKeyEvent(int physicalKeycode, int unicode, int keyLabel, boolean pressed, boolean echo) {
        InputEventRunnable runnable = InputEventRunnable.obtain();
        if (runnable == null) {
            return;
        }
        runnable.setKeyEvent(physicalKeycode, unicode, keyLabel, pressed, echo);
        dispatchInputEventRunnable(runnable);
    }

    private void dispatchInputEventRunnable(InputEventRunnable runnable) {
        if (shouldDispatchInputToRenderThread()) {
            this.godot.runOnRenderThread(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        InputEventRunnable runnable;
        float[] values = event.values;
        if (values == null || values.length != 3 || (runnable = InputEventRunnable.obtain()) == null) {
            return;
        }
        if (this.cachedRotation == -1) {
            updateCachedRotation();
        }
        float rotatedValue0 = 0.0f;
        float rotatedValue1 = 0.0f;
        float rotatedValue2 = 0.0f;
        switch (this.cachedRotation) {
            case 0:
                rotatedValue0 = values[0];
                rotatedValue1 = values[1];
                rotatedValue2 = values[2];
                break;
            case 1:
                rotatedValue0 = -values[1];
                rotatedValue1 = values[0];
                rotatedValue2 = values[2];
                break;
            case 2:
                rotatedValue0 = -values[0];
                rotatedValue1 = -values[1];
                rotatedValue2 = values[2];
                break;
            case 3:
                rotatedValue0 = values[1];
                rotatedValue1 = -values[0];
                rotatedValue2 = values[2];
                break;
        }
        runnable.setSensorEvent(event.sensor.getType(), rotatedValue0, rotatedValue1, rotatedValue2);
        this.godot.runOnRenderThread(runnable);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    private void updateCachedRotation() {
        this.cachedRotation = this.windowManager.getDefaultDisplay().getRotation();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        updateCachedRotation();
    }
}
