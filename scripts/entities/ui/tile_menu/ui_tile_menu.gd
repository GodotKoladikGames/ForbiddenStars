class_name TileMenu extends Control

var button_flip: Button
var button_assept: Button
var button_rotate_clock: Button
var button_rotate_contr_clock: Button
var button_next_position: Button
static var _scene: PackedScene
@export var manager: TileBuildManager

func _on_flip_pressed():
	manager.flip_request.emit()

func _on_assept_pressed():
	manager.assept_request.emit()

func _on_rotate_clock_pressed():
	manager.rotate_next_request.emit()

func _on_rotate_contr_clock_pressed():
	manager.rotate_prev_request.emit()

func _on_next_position_pressed():
	manager.position_next_request.emit()

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
	if tile_build_manager:
		manager = tile_build_manager

static func load_scene():
	_scene = preload("uid://cwnv00rppcfur")

static func create() -> TileMenu:
	if _scene == null:
		load_scene()
	var scene = _scene.instantiate() as TileMenu
	return scene
	
