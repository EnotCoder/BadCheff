extends Node3D

@export var large_distance := 25.0
@export var medium_distance := 15.0
@export var small_distance := 10.0
@export var fade_margin := 2.0

@onready var camera: Camera3D = get_viewport().get_camera_3d()

func _ready() -> void:
	for child in get_tree().current_scene.find_children("*", "MeshInstance3D", true, false):
		if _has_ancestor_named(child, ["mesh", "up mesh"]):
			continue
		_setup_mesh(child)

func _has_ancestor_named(node: Node, names: Array) -> bool:
	var current := node.get_parent()
	while current:
		if current.name in names:
			return true
		current = current.get_parent()
	return false

func _setup_mesh(mesh: MeshInstance3D) -> void:
	var aabb := mesh.get_aabb()
	var size := aabb.size.length()
	var distance := small_distance

	if size > 4.0:
		distance = large_distance
	elif size > 1.5:
		distance = medium_distance

	mesh.visibility_range_end = distance
	mesh.visibility_range_end_margin = fade_margin
	mesh.visibility_range_fade_mode = 2
