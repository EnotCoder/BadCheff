extends CharacterBody3D

class_name Player

enum Platform { PC, ANDROID }

@export var platform: Platform = Platform.ANDROID
@export var search_timer_duration: float = 10.0

const WALK_SPEED := 4.0
const CROUCH_SPEED := 2.0
const STAND_HEIGHT := 2.4
const CROUCH_HEIGHT := 1.2
const CAMERA_STAND_Y := 2.18
const CAMERA_CROUCH_Y := 1.131
const INTERACT_STAND_Y := 1.782
const INTERACT_CROUCH_Y := 1.181
const COLLISION_STAND_Y := 1.193
const COLLISION_CROUCH_Y := 0.598
const CAMERA_PITCH_LIMIT_DEG := 70.0
const CAMERA_BOB_FREQUENCY := 2.6
const CAMERA_BOB_AMPLITUDE_X := 0.03
const CAMERA_BOB_AMPLITUDE_Y := 0.04
const MOUSE_SENSITIVITY_PC := 0.003
const MOUSE_SENSITIVITY_MOBILE := 0.005
const CURSOR_INTERACT_SIZE := Vector2(6, 6)
const CURSOR_DEFAULT_SIZE := Vector2(4, 4)

var current_speed: float = WALK_SPEED
var is_crouching: bool = false
var camera_base_y: float = CAMERA_STAND_Y
var bob_time: float = 0.0
var bob_offset := Vector3.ZERO

@onready var camera: Camera3D = $Camera3D
@onready var ray_cast: RayCast3D = $Camera3D/RayCast3D
@onready var mesh: MeshInstance3D = $MeshInstance3D
@onready var collision: CollisionShape3D = $CollisionShape3D
@onready var interact_position: Node3D = $"obj pos"
@onready var walking_sound: AudioStreamPlayer3D = $"ЗвукХодьбы"
@onready var cursor: MeshInstance2D = $Control/cursor
@onready var virtual_joystick: Control = $"Virtual Joystick"
@onready var control_button: Node2D = $"Control/control"
@onready var anim_screen: Node2D = $"Control/anim screen"
@onready var enemy_timer: Control = $"timer enemy"

func _ready() -> void:
	if platform == Platform.PC:
		virtual_joystick.hide()
		control_button.hide()
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	State.noise.connect(enemy_timer.p.bind())
	enemy_timer.get_node("Timer").wait_time = search_timer_duration
	anim_screen.color_down()

func _physics_process(delta: float) -> void:
	update_walking_sound()
	update_camera_bob(delta)
	State.player = global_position

	if Input.is_action_just_pressed("sit"):
		toggle_crouch()

	if not is_on_floor():
		velocity += get_gravity() * delta

	var input_dir := Input.get_vector("a", "d", "w", "s")
	var direction := (transform.basis * Vector3(input_dir.x, 0.0, input_dir.y)).normalized()

	if direction:
		velocity.x = direction.x * current_speed
		velocity.z = direction.z * current_speed
	else:
		velocity.x = move_toward(velocity.x, 0.0, current_speed)
		velocity.z = move_toward(velocity.z, 0.0, current_speed)

	move_and_slide()

	if Input.is_action_just_pressed("EXIT"):
		get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")

	update_cursor()

func _input(event: InputEvent) -> void:
	if platform == Platform.PC and event is InputEventMouseMotion:
		rotate_y(-event.relative.x * MOUSE_SENSITIVITY_PC)
		camera.rotate_x(-event.relative.y * MOUSE_SENSITIVITY_PC)
		clamp_camera_rotation()
	elif event is InputEventScreenDrag:
		rotate_y(-event.relative.x * MOUSE_SENSITIVITY_MOBILE)
		camera.rotate_x(-event.relative.y * MOUSE_SENSITIVITY_MOBILE)
		clamp_camera_rotation()

func clamp_camera_rotation() -> void:
	var camera_rotation: Vector3 = camera.rotation_degrees
	camera_rotation.x = clamp(camera_rotation.x, -CAMERA_PITCH_LIMIT_DEG, CAMERA_PITCH_LIMIT_DEG)
	camera.rotation_degrees = camera_rotation

func toggle_crouch() -> void:
	is_crouching = not is_crouching
	if is_crouching:
		mesh.mesh.height = CROUCH_HEIGHT
		mesh.position = Vector3(0, 0.6, 0)
		camera_base_y = CAMERA_CROUCH_Y
		collision.shape.height = CROUCH_HEIGHT
		interact_position.position.y = INTERACT_CROUCH_Y
		collision.position = Vector3(0, COLLISION_CROUCH_Y, 0)
		current_speed = CROUCH_SPEED
	else:
		mesh.mesh.height = STAND_HEIGHT
		mesh.position = Vector3(0, 1.197, 0)
		camera_base_y = CAMERA_STAND_Y
		collision.shape.height = STAND_HEIGHT
		interact_position.position.y = INTERACT_STAND_Y
		collision.position = Vector3(0, COLLISION_STAND_Y, 0)
		current_speed = WALK_SPEED

func update_walking_sound() -> void:
	if velocity != Vector3.ZERO:
		walking_sound.stream_paused = false
	else:
		walking_sound.stream_paused = true

func update_camera_bob(delta: float) -> void:
	bob_time += delta + velocity.length() * 0.01
	bob_offset = Vector3.ZERO
	bob_offset.x = sin(bob_time * CAMERA_BOB_FREQUENCY) * CAMERA_BOB_AMPLITUDE_X
	bob_offset.y = cos(bob_time * CAMERA_BOB_FREQUENCY) * CAMERA_BOB_AMPLITUDE_Y + camera_base_y
	camera.position = bob_offset

func update_cursor() -> void:
	if ray_cast.is_colliding():
		var hit := ray_cast.get_collider()
		if hit:
			cursor.scale = CURSOR_INTERACT_SIZE
			if Input.is_action_just_pressed("left_click") and hit.has_method("main"):
				hit.main()
			if hit.has_method("main_delta"):
				hit.main_delta()
		else:
			cursor.scale = CURSOR_INTERACT_SIZE
	else:
		cursor.scale = CURSOR_DEFAULT_SIZE
