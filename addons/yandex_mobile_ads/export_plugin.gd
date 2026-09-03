@tool
extends EditorPlugin

var export_plugin : AndroidExportPlugin

func _enter_tree():
	export_plugin = AndroidExportPlugin.new()
	add_export_plugin(export_plugin)

func _exit_tree():
	remove_export_plugin(export_plugin)
	export_plugin = null


class AndroidExportPlugin extends EditorExportPlugin:
	var _plugin_name = "yandex_mobile_ads"

	func _supports_platform(platform):
		return platform is EditorExportPlatformAndroid

	func _get_android_libraries(platform, debug):
		return PackedStringArray(["res://addons/yandex_mobile_ads/plugin.aar"])

	func _get_android_dependencies(platform, debug):
		return PackedStringArray(["com.yandex.android:mobileads:8.3.0"])

	func _get_android_dependencies_maven_repos(platform, debug):
		return PackedStringArray(["https://repo1.maven.org/maven2/"])

	func _get_android_manifest_element_contents(platform, debug):
		return "<uses-permission android:name=\"android.permission.INTERNET\" />"

	func _get_name():
		return _plugin_name
