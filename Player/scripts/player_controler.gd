extends CharacterBody3D

class_name player

var SPEED = 4

var num = 1
var site = false
@export var time = 10

var cd_time = 0.0
var cd_pos = Vector3()
var camera_pos = 2.18
@onready var ray_cast: RayCast3D = $Camera3D / RayCast3D



func _physics_process(delta: float) -> void :
	if velocity != Vector3(0, 0, 0): $"ЗвукХодьбы".stream_paused = false
	else: $"ЗвукХодьбы".stream_paused = true

	camera_bob(delta)
	State.Player = global_position

	if !site and Input.is_action_just_pressed("sit"):
		$MeshInstance3D.mesh.height = 1.2
		$MeshInstance3D.position = Vector3(0, 0.6, 0)
		camera_pos = 1.131
		$CollisionShape3D.shape.height = 1.2
		$"obj pos".position.y = 1.181
		$CollisionShape3D.position = Vector3(0, 0.598, 0)
		SPEED = 2
		site = true
	elif site and Input.is_action_just_pressed("sit"):
		$MeshInstance3D.mesh.height = 2.4
		$MeshInstance3D.position = Vector3(0, 1.197, 0)
		camera_pos = 2.18
		$"obj pos".position.y = 1.782
		$CollisionShape3D.shape.height = 2.4
		$CollisionShape3D.position = Vector3(0, 1.193, 0)
		SPEED = 4
		site = false

	MainInventoryScript.chose_obj = MainInventoryScript.all[str(MainInventoryScript.num_chose)]

	if not is_on_floor():
		velocity += get_gravity() * delta

	var input_dir: = Input.get_vector("a", "d", "w", "s")
	var direction: = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

	if Input.is_action_just_pressed("EXIT"):
		get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")


	if ray_cast.is_colliding():
		var hit = ray_cast.get_collider()
		if hit:
			$Control / cursor.scale = Vector2(6, 6)
			if Input.is_action_just_pressed("left_click") and hit.has_method("main"):
				hit.main()
			if hit.has_method("main_delta"):
				hit.main_delta()
		else:
			$Control / cursor.scale = Vector2(6, 6)
	else:
		$Control / cursor.scale = Vector2(4, 4)

func _ready() -> void :
	Diolog.set_say("Нужно выбратся от сюда и найти отца")
	State.noise.connect($"timer enemy".p.bind())
	$"timer enemy/Timer".wait_time = time
	$"Control/anim screen".color_down()


func _input(event: InputEvent) -> void :
	if event is InputEventScreenDrag:
		rotate_y( - event.relative.x * 0.005)
		$Camera3D.rotate_x( - event.relative.y * 0.005)
		clamp_camera_rotation()

func clamp_camera_rotation():
	var rotation_camera = $Camera3D.rotation_degrees
	rotation_camera.x = clamp(rotation_camera.x, -70, 70)
	$Camera3D.rotation_degrees = rotation_camera

func camera_bob(delta):
	cd_time += delta + velocity.length() * 0.01
	cd_pos = Vector3.ZERO
	cd_pos.x = sin(cd_time * 2.6) * 0.03
	cd_pos.y = cos(cd_time * 2.6) * 0.04 + camera_pos
	$Camera3D.position = cd_pos
