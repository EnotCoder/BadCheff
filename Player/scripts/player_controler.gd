extends CharacterBody3D

class_name player

const WALK_SPEED := 4.0
const CROUCH_SPEED := 2.0
const STAND_HEIGHT := 2.4
const CROUCH_HEIGHT := 1.2
const STAND_CAMERA_Y := 2.18
const CROUCH_CAMERA_Y := 1.131
const STAND_OBJ_Y := 1.782
const CROUCH_OBJ_Y := 1.181
const STAND_COLLISION_Y := 1.193
const CROUCH_COLLISION_Y := 0.598
const CAMERA_PITCH_LIMIT_DEG := 70.0
const BOB_FREQUENCY := 2.6
const BOB_AMOUNT_X := 0.03
const BOB_AMOUNT_Y := 0.04

@export var time: float = 10.0

var _speed: float = WALK_SPEED
var _is_crouching: bool = false
var _camera_base_y: float = STAND_CAMERA_Y

var _bob_time: float = 0.0
var _bob_offset := Vector3.ZERO

@onready var ray_cast: RayCast3D = $Camera3D / RayCast3D

func _physics_process(delta: float) -> void:
	if velocity != Vector3.ZERO:
		$"ЗвукХодьбы".stream_paused = false
	else:
		$"ЗвукХодьбы".stream_paused = true

	camera_bob(delta)
	State.Player = global_position

	if Input.is_action_just_pressed("sit"):
		_toggle_crouch()

	MainInventoryScript.chose_obj = MainInventoryScript.all[str(MainInventoryScript.num_chose)]

	if not is_on_floor():
		velocity += get_gravity() * delta

	var input_dir := Input.get_vector("a", "d", "w", "s")
	var direction := (transform.basis * Vector3(input_dir.x, 0.0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * _speed
		velocity.z = direction.z * _speed
	else:
		velocity.x = move_toward(velocity.x, 0.0, _speed)
		velocity.z = move_toward(velocity.z, 0.0, _speed)

	move_and_slide()

	if Input.is_action_just_pressed("EXIT"):
		get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")

	if ray_cast.is_colliding():
		var hit := ray_cast.get_collider()
		if hit:
			$"Control / cursor".scale = Vector2(6, 6)
			if Input.is_action_just_pressed("left_click") and hit.has_method("main"):
				hit.main()
			if hit.has_method("main_delta"):
				hit.main_delta()
		else:
			$"Control / cursor".scale = Vector2(6, 6)
	else:
		$"Control / cursor".scale = Vector2(4, 4)

func _ready() -> void:
	Diolog.set_say("Нужно выбратся от сюда и найти отца")
	State.noise.connect($"timer enemy".p.bind())
	$"timer enemy/Timer".wait_time = time
	$"Control/anim screen".color_down()

func _input(event: InputEvent) -> void:
	if event is InputEventScreenDrag:
		rotate_y(-event.relative.x * 0.005)
		$Camera3D.rotate_x(-event.relative.y * 0.005)
		clamp_camera_rotation()

func clamp_camera_rotation() -> void:
	var rotation_camera: Vector3 = $Camera3D.rotation_degrees
	rotation_camera.x = clamp(rotation_camera.x, -CAMERA_PITCH_LIMIT_DEG, CAMERA_PITCH_LIMIT_DEG)
	$Camera3D.rotation_degrees = rotation_camera

func _toggle_crouch() -> void:
	_is_crouching = not _is_crouching
	if _is_crouching:
		$MeshInstance3D.mesh.height = CROUCH_HEIGHT
		$MeshInstance3D.position = Vector3(0, 0.6, 0)
		_camera_base_y = CROUCH_CAMERA_Y
		$CollisionShape3D.shape.height = CROUCH_HEIGHT
		$"obj pos".position.y = CROUCH_OBJ_Y
		$CollisionShape3D.position = Vector3(0, CROUCH_COLLISION_Y, 0)
		_speed = CROUCH_SPEED
	else:
		$MeshInstance3D.mesh.height = STAND_HEIGHT
		$MeshInstance3D.position = Vector3(0, 1.197, 0)
		_camera_base_y = STAND_CAMERA_Y
		$CollisionShape3D.shape.height = STAND_HEIGHT
		$"obj pos".position.y = STAND_OBJ_Y
		$CollisionShape3D.position = Vector3(0, STAND_COLLISION_Y, 0)
		_speed = WALK_SPEED

func camera_bob(delta: float) -> void:
	_bob_time += delta + velocity.length() * 0.01
	_bob_offset = Vector3.ZERO
	_bob_offset.x = sin(_bob_time * BOB_FREQUENCY) * BOB_AMOUNT_X
	_bob_offset.y = cos(_bob_time * BOB_FREQUENCY) * BOB_AMOUNT_Y + _camera_base_y
	$Camera3D.position = _bob_offset
