extends Sprite2D

@export var speed: float = 100

@export var joystick_left: VirtualJoystickAddon

@export var joystick_right: VirtualJoystickAddon

var move_vector: = Vector2.ZERO

func _process(delta: float) -> void :





	move_vector = Vector2.ZERO
	move_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	position += move_vector * speed * delta


	if joystick_right and joystick_right.is_pressed:
		rotation = joystick_right.output.angle()
