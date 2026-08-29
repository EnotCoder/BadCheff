extends CharacterBody3D
class_name enemy


const WALK_SPEED = 3
const RUN_SPEED = 5

var navigation_target = Vector3.ZERO
var prev_velocity = Vector3.ZERO
var kill = false

@onready var animation_state_machine = $AnimationTree.get("parameters/playback")
@export var list_kitchen_objects: Array[Node]
@export var list_room_objects: Array[Node]

func _ready():
	State.object_list_from_kithcen = list_kitchen_objects
	State.object_list_from_room = list_room_objects

func _physics_process(delta):
	# Gravitation
	if !is_on_floor():
		velocity += get_gravity() * delta
	
	process_movement()
	manage_animations()


func process_movement():
	var target_position = $NavigationAgent3D.get_next_path_position()
	var dir = (target_position - global_position).normalized()

	if State.state != 2: velocity = dir * WALK_SPEED
	else: velocity = dir * RUN_SPEED
	if global_position.distance_to(target_position) > 0.3:
		look_at(target_position)
	navigate_to(get_postion())

	if $"../active object/door/door kitchen".door_opened and State.position_point == "kitchen":
		State.state = 2
		Diolog.set_say("Ага")
	elif MainInventoryScript.position_point != "frezz_room" and State.position_point == "kitchen":
		State.state = 2
		Diolog.set_say("Ага")

	if !$NavigationAgent3D.is_navigation_finished():
		move_and_slide()

func manage_animations():
	if velocity == prev_velocity and !kill:
		animation_state_machine.travel("idle")
	elif velocity != prev_velocity and !kill:
		animation_state_machine.travel("walk")
	else:
		animation_state_machine.travel("hit")
	prev_velocity = velocity

func get_postion():
	var n
	match State.state:
		0: n = State.Room
		1: n = State.Kithen
		2: n = State.Player
	return n

func navigate_to(_position):
	$NavigationAgent3D.target_position = _position

func _on_hit_body_entered(_body: Node3D) -> void :
	kill = true
	$"../player".queue_free()
	await get_tree().create_timer(1.2).timeout
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	$"you lost".show()
