class_name TileBuilder extends Node

@export var grid: GridMap

func _ready() -> void:
	create_tile( 0,  0)
	create_tile( 0, -1)
	create_tile(-1, -1)
	create_tile(-1,  0)

func create_tile(grid_x: int, grid_y: int):
	var world_position = grid.map_to_local(Vector3i(grid_x, 0, grid_y))
	var tile = Tile.create(world_position.x, world_position.z)
	var size_x = grid.cell_size.x
	var size_y = grid.cell_size.z
	grid.add_child(tile)
	tile.sprite.texture_fit(size_x, size_y)
	#print("tile created")
