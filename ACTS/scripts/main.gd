extends Control

@onready var menu: Control = $"../menu"
@onready var chapter_chose: Control = $"../chapter_chose"

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	YandexSDK.launch_adv_closed.connect(_on_launch_adv_closed)
	$"../../cheff/AnimationPlayer".play("idle")

	chapter_chose.get_node("chapter_one").pressed.connect(_on_chapter_one_pressed)
	chapter_chose.get_node("chapter_one2").pressed.connect(_on_chapter_two_pressed)


func _process(_delta: float) -> void:
	menu.get_node("FPS").text = "FPS: " + str(Engine.get_frames_per_second())


func _on_play_pressed() -> void:
	menu.hide()
	chapter_chose.show()


func _on_chapter_one_pressed() -> void:
	if YandexSDK.is_online:
		YandexSDK.show_launch_adv()
	else:
		_show_loading_and_change("res://ACTS/ACTS/act_1_prolog.tscn")


func _on_chapter_two_pressed() -> void:
	pass


func _on_launch_adv_closed() -> void:
	_show_loading_and_change("res://ACTS/ACTS/act_1_prolog.tscn")


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


func _on_exit_pressed() -> void:
	get_tree().quit()
