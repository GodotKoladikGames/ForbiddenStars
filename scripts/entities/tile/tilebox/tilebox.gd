class_name TileBox extends Node3D

const scene = preload("uid://cvx04fjl03g38")

static func create(x, y):
	var tile = scene.instantiate() as TileBox
	tile.position.x = x
	tile.position.z = y
	return tile
