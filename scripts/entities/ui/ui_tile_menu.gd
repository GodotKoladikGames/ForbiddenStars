class_name TileMenu extends Control

var button_flip: Button
var button_assept: Button
var button_rotate_clock: Button
var button_rotate_contr_clock: Button
var button_next_position: Button
@export var build_manager: TileBuildManager

func _on_flip_pressed():
	build_manager.flip_request.emit()

func _on_assept_pressed():
	build_manager.assept_request.emit()

func _on_rotate_clock_pressed():
	build_manager.rotate_next_request.emit()

func _on_rotate_contr_clock_pressed():
	build_manager.rotate_prev_request.emit()

func _on_next_position_pressed():
	build_manager.position_next_request.emit()

func setup_buttons():
	button_flip.pressed.connect(_on_flip_pressed)
	button_assept.pressed.connect(_on_assept_pressed)
	button_rotate_clock.pressed.connect(_on_rotate_clock_pressed)
	button_rotate_contr_clock.pressed.connect(_on_rotate_contr_clock_pressed)
	button_next_position.pressed.connect(_on_next_position_pressed)

func _enter_tree() -> void:
	button_flip = get_node("ButtonFlip")
	button_assept = get_node("ButtonAssept")
	button_rotate_clock = get_node("ButtonRotateClock")
	button_rotate_contr_clock = get_node("ButtonRotateConrClock")
	button_next_position = get_node("ButtonNextPosition")
	setup_buttons()
