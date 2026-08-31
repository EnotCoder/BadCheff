extends CharacterBody3D
class_name Enemy

signal player_caught

const WALK_SPEED := 3.0
const RUN_SPEED := 5.0
const ARRIVE_DISTANCE := 0.3

var kill := false

@onready var animation_state_machine = animation_tree.get("parameters/playback")
@export var navigation_agent: NavigationAgent3D
@export var animation_tree: AnimationTree
@export var hit: Area3D
@export var door_kitchen: Node
@export var list_kitchen_objects: Array[Node]
@export var list_room_objects: Array[Node]

func _ready() -> void:
	State.object_list_from_kitchen = list_kitchen_objects
	State.object_list_from_room = list_room_objects
	hit.body_entered.connect(_on_hit_body_entered)

func _physics_process(delta: float) -> void:
	if !is_on_floor():
		velocity += get_gravity() * delta
	process_movement()
	manage_animations()

func process_movement() -> void:
	var target_position := navigation_agent.get_next_path_position()
	var dir := (target_position - global_position).normalized()

	if State.state != State.StateBook.ATTACK:
		velocity = dir * WALK_SPEED
	else:
		velocity = dir * RUN_SPEED
	if global_position.distance_to(target_position) > ARRIVE_DISTANCE:
		var look_target = Vector3(target_position.x, global_position.y, target_position.z)
		var target_transform = global_transform.looking_at(look_target, Vector3.UP)
		global_transform.basis = global_transform.basis.slerp(target_transform.basis, 10.0 * get_physics_process_delta_time())
	navigate_to(get_navigation_target())

	if State.position_point == "kitchen" and (
		door_kitchen.get("door_opened") as bool
		or MainInventoryScript.position_point != "frezz_room"
	):
		_start_chase()

	if !navigation_agent.is_navigation_finished():
		move_and_slide()

func _start_chase() -> void:
	State.state = State.StateBook.ATTACK
	Dialog.show_say("Ага")

func manage_animations() -> void:
	if kill:
		animation_state_machine.travel("hit")
	elif not navigation_agent.is_navigation_finished() and velocity.length() > 0.01:
		animation_state_machine.travel("walk")
	else:
		animation_state_machine.travel("idle")

func get_navigation_target() -> Vector3:
	match State.state:
		State.StateBook.IDLE: return State.Room
		State.StateBook.CHEAK: return State.Kitchen
		State.StateBook.ATTACK: return State.player
		_: return State.Room

func navigate_to(_position: Vector3) -> void:
	navigation_agent.target_position = _position

func _on_hit_body_entered(_body: Node3D) -> void:
	kill = true
	player_caught.emit()
