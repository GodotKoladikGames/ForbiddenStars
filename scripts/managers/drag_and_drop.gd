extends Node #DragAndDrop Singleton

var object: Node3D
@export var world: World

func drag(_object):
	object = _object

func drop():
	object = null

func setup(_world):
	world = _world

func _update_position():
	var position = world.get_mouse_pos()
	object.position = position
	

func _physics_process(_delta: float) -> void:
	if object:
		_update_position()
