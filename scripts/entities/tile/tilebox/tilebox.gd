class_name TileBox extends Node3D

const scene = preload("uid://cvx04fjl03g38")

var _visual: TileBoxVisual

func animated_flip():
	_visual.animated_flip()

func animated_clock_rotate(angle):
	_visual.animated_rotate(angle)

func _enter_tree() -> void:
	_visual = get_node("Visual")

static func create(x, y):
	var tile = scene.instantiate() as TileBox
	tile.position.x = x
	tile.position.z = y
	return tile
