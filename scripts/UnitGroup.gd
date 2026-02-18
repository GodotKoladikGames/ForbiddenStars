class_name UnitGroup extends RefCounted

var group: Array[Unit]

static func from_array(array: Array[Unit]):
	var obj = new()
	obj.group = array
	return obj

func get_power():
	var res = 0
	for unit in group:
		res += unit.type.power
	return res
