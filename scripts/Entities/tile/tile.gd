class_name Tile extends Node3D

@export var number: int = 0

var sprite: TileSprite

const scene = preload("uid://cg8k21pwqjd4h")

static func create(_x, _y):
	var tile = scene.instantiate() as Tile
	tile.position.x = _x
	tile.position.z = _y
	return tile
	

func _enter_tree() -> void:
	sprite = find_child("TileSprite") as TileSprite
	
	
