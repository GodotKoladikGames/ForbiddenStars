class_name MenuDebugState extends StateMachineState

@export var root: Node
var _scene: Control

func _enter_state() -> void:
	pass
	#add_child()

func _enter_tree() -> void:
	_scene = MenuDebug.create()
