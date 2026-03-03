class_name MenuDebug extends Control

var button_tile_menu: Button
static var _scene: PackedScene

func _on_tile_menu_pressed():
	pass

func setup_buttons():
	button_tile_menu.pressed.connect(_on_tile_menu_pressed)

func _enter_tree() -> void:
	button_tile_menu = get_node("ButtonTileMenu")
	setup_buttons()

static func load_scene():
	_scene = preload("uid://nqnwny4wumqg")

static func create() -> MenuDebug:
	if _scene == null:
		load_scene()
	var scene = _scene.instantiate() as MenuDebug
	return scene
