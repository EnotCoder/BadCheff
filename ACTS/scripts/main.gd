extends Node3D

var _pending_scene_path: String = ""
var _animating := false

@onready var _menu: Control = $UI/menu
@onready var _chapter_chose: Control = $UI/chapter_chose

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	YandexSDK.launch_adv_closed.connect(_on_launch_adv_closed)
	$cheff/AnimationPlayer.play("idle")
	_menu.play_pressed.connect(_on_play_pressed)
	_chapter_chose.chapter_selected.connect(_on_chapter_selected)

func _on_play_pressed() -> void:
	if _animating:
		return
	_animating = true
	await UIAnimations.slide_out(_menu)
	await UIAnimations.slide_in(_chapter_chose)
	_animating = false

func _on_chapter_selected(path: String) -> void:
	if _animating:
		return
	_animating = true
	await UIAnimations.fade_out(_chapter_chose)
	_animating = false
	_pending_scene_path = path
	if YandexSDK.is_online:
		YandexSDK.show_launch_adv()
	else:
		_show_loading_and_change(_pending_scene_path)

func _on_launch_adv_closed() -> void:
	_show_loading_and_change(_pending_scene_path)

func _show_loading_and_change(path: String) -> void:
	var loading := preload("res://widget/loading_screen.tscn").instantiate()
	add_child(loading)
	await get_tree().process_frame

	ResourceLoader.load_threaded_request(path)
	var progress: Array = []
	while true:
		var status := ResourceLoader.load_threaded_get_status(path, progress)
		if status == ResourceLoader.THREAD_LOAD_LOADED:
			break
		if status == ResourceLoader.THREAD_LOAD_FAILED:
			push_error("Failed to load scene: " + path)
			return
		if is_instance_valid(loading):
			loading.set_progress(progress[0])
		await get_tree().process_frame

	var packed := ResourceLoader.load_threaded_get(path) as PackedScene
	if packed:
		get_tree().change_scene_to_packed(packed)
