class_name TileMenu extends Control

var button_flip: Button
var button_rotate_clock: Button
var button_rotate_contr_clock: Button

func _enter_tree() -> void:
	button_flip = get_node("ButtonFlip")
	button_rotate_clock = get_node("ButtonRotateClock")
	button_rotate_contr_clock = get_node("ButtonRotateConrClock")
