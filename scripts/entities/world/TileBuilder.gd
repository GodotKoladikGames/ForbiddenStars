class_name TileBuilder extends Node

@export var grid: GridMap

var _allowed_points: GridPoints = GridPoints.new()

func _ready() -> void:
	var point = get_point()
	create_tile(point.x, point.y)
	_allowed_points.extend(point)
	_allowed_points.erase(point)

func get_point() -> Variant:
	var points: Array[Vector2i] = _allowed_points.get_all()
	if len(points) > 0:
		return points[0]
	else:
		return null

func create_tile(grid_x: int, grid_y: int) -> TileBox:
	var world_position = grid.map_to_local(Vector3i(grid_x, 0, grid_y))
	var tile = TileBox.create(world_position.x, world_position.z)
	grid.add_child(tile)
	return tile

func _enter_tree() -> void:
	pass

func _init() -> void:
	_allowed_points.add(Vector2i(0, 0))
