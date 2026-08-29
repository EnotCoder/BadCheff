extends Node

var all = {
	"1": "", 
	"2": "", 
	"3": ""
}

var chose_obj
var num_chose = 1

var position_point = "frezz_room"

func add(key):
	var ret
	for i in all:
		if !all[i]:
			all[i] = key
			ret = true
			break
		ret = false

	return ret
