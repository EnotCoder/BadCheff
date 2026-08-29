package org.godotengine.godot.input;

import android.util.Log;
import android.view.MotionEvent;
import androidx.core.util.Pools;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.godotengine.godot.GodotLib;

/* JADX INFO: loaded from: classes2.dex */
final class InputEventRunnable implements Runnable {
    private static final int MAX_TOUCH_POINTER_COUNT = 10;
    private int actionPointerId;
    private int axis;
    private int button;
    private int buttonsMask;
    private boolean connected;
    private final int creationRank;
    private EventType currentEventType;
    private boolean doubleTap;
    private boolean echo;
    private int eventAction;
    private float eventDeltaX;
    private float eventDeltaY;
    private boolean eventPressed;
    private float eventX;
    private float eventY;
    private int hatX;
    private int hatY;
    private int joystickDevice;
    private String joystickName;
    private int keyLabel;
    private float magnifyFactor;
    private int physicalKeycode;
    private int pointerCount;
    private final float[] positions;
    private float pressure;
    private float rotatedValue0;
    private float rotatedValue1;
    private float rotatedValue2;
    private int sensorType;
    private boolean sourceMouseRelative;
    private float tiltX;
    private float tiltY;
    private int unicode;
    private float value;
    private static final String TAG = InputEventRunnable.class.getSimpleName();
    private static final Pools.Pool<InputEventRunnable> POOL = new Pools.Pool<InputEventRunnable>() { // from class: org.godotengine.godot.input.InputEventRunnable.1
        private static final int MAX_POOL_SIZE = 1200;
        private final ArrayBlockingQueue<InputEventRunnable> queue = new ArrayBlockingQueue<>(MAX_POOL_SIZE);
        private final AtomicInteger createdCount = new AtomicInteger();

        @Override // androidx.core.util.Pools.Pool
        public InputEventRunnable acquire() {
            int creationCount;
            InputEventRunnable instance = this.queue.poll();
            if (instance == null && (creationCount = this.createdCount.incrementAndGet()) <= MAX_POOL_SIZE) {
                return new InputEventRunnable(creationCount - 1);
            }
            return instance;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(InputEventRunnable instance) {
            return this.queue.offer(instance);
        }
    };

    private enum EventType {
        MOUSE,
        TOUCH,
        MAGNIFY,
        PAN,
        JOYSTICK_BUTTON,
        JOYSTICK_AXIS,
        JOYSTICK_HAT,
        JOYSTICK_CONNECTION_CHANGED,
        KEY,
        SENSOR
    }

    static InputEventRunnable obtain() {
        InputEventRunnable runnable = POOL.acquire();
        if (runnable == null) {
            Log.w(TAG, "Input event pool is at capacity");
        }
        return runnable;
    }

    private InputEventRunnable(int creationRank) {
        this.currentEventType = null;
        this.positions = new float[60];
        this.creationRank = creationRank;
    }

    void setMouseEvent(int eventAction, int buttonsMask, float x, float y, float deltaX, float deltaY, boolean doubleClick, boolean sourceMouseRelative, float pressure, float tiltX, float tiltY) {
        this.currentEventType = EventType.MOUSE;
        this.eventAction = eventAction;
        this.buttonsMask = buttonsMask;
        this.eventX = x;
        this.eventY = y;
        this.eventDeltaX = deltaX;
        this.eventDeltaY = deltaY;
        this.doubleTap = doubleClick;
        this.sourceMouseRelative = sourceMouseRelative;
        this.pressure = pressure;
        this.tiltX = tiltX;
        this.tiltY = tiltY;
    }

    void setTouchEvent(MotionEvent event, int eventAction, boolean doubleTap) {
        this.currentEventType = EventType.TOUCH;
        this.eventAction = eventAction;
        this.doubleTap = doubleTap;
        this.actionPointerId = event.getPointerId(event.getActionIndex());
        this.pointerCount = Math.min(event.getPointerCount(), 10);
        for (int i = 0; i < this.pointerCount; i++) {
            this.positions[(i * 6) + 0] = event.getPointerId(i);
            this.positions[(i * 6) + 1] = event.getX(i);
            this.positions[(i * 6) + 2] = event.getY(i);
            this.positions[(i * 6) + 3] = event.getPressure(i);
            this.positions[(i * 6) + 4] = GodotInputHandler.getEventTiltX(event);
            this.positions[(i * 6) + 5] = GodotInputHandler.getEventTiltY(event);
        }
    }

    void setMagnifyEvent(float x, float y, float factor) {
        this.currentEventType = EventType.MAGNIFY;
        this.eventX = x;
        this.eventY = y;
        this.magnifyFactor = factor;
    }

    void setPanEvent(float x, float y, float deltaX, float deltaY) {
        this.currentEventType = EventType.PAN;
        this.eventX = x;
        this.eventY = y;
        this.eventDeltaX = deltaX;
        this.eventDeltaY = deltaY;
    }

    void setJoystickButtonEvent(int device, int button, boolean pressed) {
        this.currentEventType = EventType.JOYSTICK_BUTTON;
        this.joystickDevice = device;
        this.button = button;
        this.eventPressed = pressed;
    }

    void setJoystickAxisEvent(int device, int axis, float value) {
        this.currentEventType = EventType.JOYSTICK_AXIS;
        this.joystickDevice = device;
        this.axis = axis;
        this.value = value;
    }

    void setJoystickHatEvent(int device, int hatX, int hatY) {
        this.currentEventType = EventType.JOYSTICK_HAT;
        this.joystickDevice = device;
        this.hatX = hatX;
        this.hatY = hatY;
    }

    void setJoystickConnectionChangedEvent(int device, boolean connected, String name) {
        this.currentEventType = EventType.JOYSTICK_CONNECTION_CHANGED;
        this.joystickDevice = device;
        this.connected = connected;
        this.joystickName = name;
    }

    void setKeyEvent(int physicalKeycode, int unicode, int keyLabel, boolean pressed, boolean echo) {
        this.currentEventType = EventType.KEY;
        this.physicalKeycode = physicalKeycode;
        this.unicode = unicode;
        this.keyLabel = keyLabel;
        this.eventPressed = pressed;
        this.echo = echo;
    }

    void setSensorEvent(int sensorType, float rotatedValue0, float rotatedValue1, float rotatedValue2) {
        this.currentEventType = EventType.SENSOR;
        this.sensorType = sensorType;
        this.rotatedValue0 = rotatedValue0;
        this.rotatedValue1 = rotatedValue1;
        this.rotatedValue2 = rotatedValue2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.currentEventType == null) {
                Log.w(TAG, "Invalid event type");
                return;
            }
            switch (AnonymousClass2.$SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[this.currentEventType.ordinal()]) {
                case 1:
                    GodotLib.dispatchMouseEvent(this.eventAction, this.buttonsMask, this.eventX, this.eventY, this.eventDeltaX, this.eventDeltaY, this.doubleTap, this.sourceMouseRelative, this.pressure, this.tiltX, this.tiltY);
                    break;
                case 2:
                    GodotLib.dispatchTouchEvent(this.eventAction, this.actionPointerId, this.pointerCount, this.positions, this.doubleTap);
                    break;
                case 3:
                    GodotLib.magnify(this.eventX, this.eventY, this.magnifyFactor);
                    break;
                case 4:
                    GodotLib.pan(this.eventX, this.eventY, this.eventDeltaX, this.eventDeltaY);
                    break;
                case 5:
                    GodotLib.joybutton(this.joystickDevice, this.button, this.eventPressed);
                    break;
                case 6:
                    GodotLib.joyaxis(this.joystickDevice, this.axis, this.value);
                    break;
                case 7:
                    GodotLib.joyhat(this.joystickDevice, this.hatX, this.hatY);
                    break;
                case 8:
                    GodotLib.joyconnectionchanged(this.joystickDevice, this.connected, this.joystickName);
                    break;
                case 9:
                    GodotLib.key(this.physicalKeycode, this.unicode, this.keyLabel, this.eventPressed, this.echo);
                    break;
                case 10:
                    switch (this.sensorType) {
                        case 1:
                            GodotLib.accelerometer(-this.rotatedValue0, -this.rotatedValue1, -this.rotatedValue2);
                            break;
                        case 2:
                            GodotLib.magnetometer(-this.rotatedValue0, -this.rotatedValue1, -this.rotatedValue2);
                            break;
                        case 4:
                            GodotLib.gyroscope(this.rotatedValue0, this.rotatedValue1, this.rotatedValue2);
                            break;
                        case 9:
                            GodotLib.gravity(-this.rotatedValue0, -this.rotatedValue1, -this.rotatedValue2);
                            break;
                    }
                    break;
            }
        } finally {
            recycle();
        }
    }

    /* JADX INFO: renamed from: org.godotengine.godot.input.InputEventRunnable$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType;

        static {
            int[] iArr = new int[EventType.values().length];
            $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType = iArr;
            try {
                iArr[EventType.MOUSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.TOUCH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.MAGNIFY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.PAN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.JOYSTICK_BUTTON.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.JOYSTICK_AXIS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.JOYSTICK_HAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.JOYSTICK_CONNECTION_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.KEY.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType[EventType.SENSOR.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    private void recycle() {
        this.currentEventType = null;
        POOL.release(this);
    }
}
