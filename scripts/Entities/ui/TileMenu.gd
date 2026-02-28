class_name TileMenu extends Control

var flip_button: Button
var rotate_button: Button


func _enter_tree() -> void:
	flip_button = get_node("FlipButton")
	rotate_button = get_node("RotateButton")
