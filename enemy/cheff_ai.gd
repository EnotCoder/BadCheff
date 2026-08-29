extends CharacterBody3D
class_name enemy


const WALK_SPEED = 3
const RUN_SPEED = 5

var navigation_target = Vector3.ZERO
var prev_velocity = Vector3.ZERO
var kill = false

@onready var animation_state_machine = $AnimationTree.get("parameters/playback")
@export var player: Node3D
@export var navigation_agent: NavigationAgent3D
@export var list_kitchen_objects: Array[Node]
@export var list_room_objects: Array[Node]

func _ready():
	State.object_list_from_kithcen = list_kitchen_objects
	State.object_list_from_room = list_room_objects
	$hit.body_entered.connect(_on_hit_body_entered)

func _physics_process(delta):
	# Gravitation
	if !is_on_floor():
		velocity += get_gravity() * delta
	
	process_movement()
	manage_animations()


func process_movement():
	var target_position = navigation_agent.get_next_path_position()
	var dir = (target_position - global_position).normalized()

	if State.state != State.StateBook.ATTACK: velocity = dir * WALK_SPEED
	else: velocity = dir * RUN_SPEED
	if global_position.distance_to(target_position) > 0.3:
		look_at(target_position)
	navigate_to(get_postion())

	if State.position_point == "kitchen" and (
		$"../active object/door/door kitchen".door_opened
		or MainInventoryScript.position_point != "frezz_room"
	):
		_start_chase()

	if !navigation_agent.is_navigation_finished():
		move_and_slide()

func _start_chase() -> void:
	State.state = State.StateBook.ATTACK
	Dialog.show_say("Ага")

func manage_animations():
	if velocity == prev_velocity and !kill:
		animation_state_machine.travel("idle")
	elif velocity != prev_velocity and !kill:
		animation_state_machine.travel("walk")
	else:
		animation_state_machine.travel("hit")
	prev_velocity = velocity

func get_postion():
	var n: Vector3
	match State.state:
		State.StateBook.IDLE: n = State.Room
		State.StateBook.CHEAK: n = State.Kithen
		State.StateBook.ATTACK: n = State.Player
		_: n = State.Room
	return n

func navigate_to(_position):
	navigation_agent.target_position = _position

func _on_hit_body_entered(_body: Node3D) -> void:
	kill = true
	player.queue_free()
	await get_tree().create_timer(1.2).timeout
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	$"you lost".show()
