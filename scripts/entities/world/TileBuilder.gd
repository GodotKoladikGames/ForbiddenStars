class_name TileBuilder extends Node

@export var grid: GridTileMap

var tile: TileBox
var idx: int

func _ready() -> void:
	start()

func start():
	var point = get_point()
	tile = create_tile(point.x, point.y)

func flip_tile():
	tile.animated_flip()

func rotate_next_tile():
	tile.animated_clock_rotate(PI/2)

func rotate_prev_tile():
	tile.animated_clock_rotate(-PI/2)

func position_next():
	idx = idx + 1
	var point = get_point()
	var world_position = grid.map_to_local(Vector3i(point.x, 0, point.y))
	tile.position.x = world_position.x
	tile.position.z = world_position.z


func point_prev():
	pass

func assept_tile():
	var point = get_point()
	grid.extend(point)
	idx = idx + 1
	point = grid.get_allowed_at(idx)
	tile = create_tile(point.x, point.y)

func get_point() -> Variant:
	var size = grid.get_allowed_size()
	if size <= 0:
		return null
	if idx >= size:
		idx = 0
	return grid.get_allowed_at(idx)

func create_tile(grid_x: int, grid_y: int) -> TileBox:
	var world_position = grid.map_to_local(Vector3i(grid_x, 0, grid_y))
	var new_tile = TileBox.create(world_position.x, world_position.z)
	grid.add_child(new_tile)
	return new_tile

func _enter_tree() -> void:
	grid.add_allowed(Vector2i(0, 0))

func _init() -> void:
	idx = 0
