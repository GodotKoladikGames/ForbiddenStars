class_name TileMenuState extends StateMachineState

@export var root: Node
var _scene: Control

func _enter_state() -> void:
	root.add_child.call_deferred(_scene)

func _enter_tree() -> void:
	_scene = TileMenu.create()
