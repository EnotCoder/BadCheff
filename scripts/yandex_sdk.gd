extends Node
## Yandex Mobile Ads bridge for BadCheff.
## Shows 1 skipable interstitial on game launch.

signal sdk_ready
signal launch_adv_closed

const INTERSTITIAL_BLOCK_ID := "R-M-19860461-1"

var _sdk: Variant = null
var _is_sdk: bool = false
var _cb_refs: Array = []
var _android: Variant = null
var _launch_pending: bool = false
var _launch_waiting: bool = false
const _LAUNCH_AD_MAX_WAIT_S := 6.0
var is_online: bool = false

func _ready() -> void:
	call_deferred("_delayed_init")

func _delayed_init() -> void:
	if Engine.has_singleton("AndroidYandexAds"):
		_android = Engine.get_singleton("AndroidYandexAds")
		is_online = true
		_android.init("", INTERSTITIAL_BLOCK_ID)
		_android.interstitial_closed.connect(_on_android_interstitial_closed)
		_android.interstitial_failed.connect(_on_android_interstitial_failed)
		_android.interstitial_ready.connect(_on_android_interstitial_ready)
		sdk_ready.emit()
	elif Engine.has_singleton("JavaScriptBridge"):
		_sdk = JavaScriptBridge.get_interface("__yandex")
		if _sdk == null:
			_is_sdk = false
			sdk_ready.emit()
			return
		_is_sdk = true
		is_online = true
		var cb := JavaScriptBridge.create_callback(_on_init_result)
		_cb_refs.append(cb)
		_sdk.init(cb)
	else:
		_is_sdk = false
		sdk_ready.emit()

func _on_init_result(args: Array) -> void:
	var ok := bool(args.size() > 0 and args[0])
	if not ok:
		sdk_ready.emit()
		return
	sdk_ready.emit()

func show_launch_adv() -> void:
	if _android != null:
		gameplay_stop()
		if _android.isInterstitialReady():
			_launch_pending = true
			_android.showInterstitial()
		else:
			_launch_pending = true
			_launch_waiting = true
			get_tree().create_timer(_LAUNCH_AD_MAX_WAIT_S).timeout.connect(_on_launch_adv_timeout)
	elif _is_sdk and _sdk != null:
		gameplay_stop()
		var cb := JavaScriptBridge.create_callback(_on_fullscreen_closed)
		_cb_refs.append(cb)
		_sdk.showFullscreen(cb)
	else:
		launch_adv_closed.emit()

func _on_android_interstitial_ready() -> void:
	if _launch_waiting:
		_launch_waiting = false
		_android.showInterstitial()

func _on_launch_adv_timeout() -> void:
	if _launch_waiting:
		_launch_waiting = false
		_launch_pending = false
		launch_adv_closed.emit()

func _on_android_interstitial_closed() -> void:
	if _launch_pending:
		_launch_pending = false
		launch_adv_closed.emit()
		return
	gameplay_start()

func _on_android_interstitial_failed(_error: String) -> void:
	if _launch_pending:
		_launch_pending = false
		launch_adv_closed.emit()
		return
	gameplay_start()

func _on_fullscreen_closed(_args: Array) -> void:
	gameplay_start()
	launch_adv_closed.emit()

func loading_ready() -> void:
	if _is_sdk and _sdk != null:
		_sdk.loadingReady()

func gameplay_start() -> void:
	if _is_sdk and _sdk != null:
		_sdk.gameplayStart()

func gameplay_stop() -> void:
	if _is_sdk and _sdk != null:
		_sdk.gameplayStop()
