extends Node

var say = ""

func set_say(text):
	say = text
	await get_tree().create_timer(2).timeout
	say = ""

var hint = ""
var hint_show = true

func set_hint(text):
	if hint_show:
		hint = text
		hint_show = false
		await get_tree().create_timer(1.5).timeout
		hint = ""
		await get_tree().create_timer(1).timeout
		hint_show = true
