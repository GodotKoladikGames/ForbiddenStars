class_name GridTileMap extends GridMap

var _allowed_points: GridPoints = GridPoints.new()
var _forbidden_points: GridPoints = GridPoints.new()

func add_allowed(point: Vector2i):
	_allowed_points.add(point)

func get_allowed_at(idx: int):
	return _allowed_points.get_at(idx)

func get_allowed_size():
	return _allowed_points.size()

func add_forbidden(point: Vector2i):
	_forbidden_points.add(point)


func get_neighbor_points(point):
	var points = [
		Vector2i(point.x - 1, point.y    ),
		Vector2i(point.x    , point.y - 1),
		Vector2i(point.x + 1, point.y    ),
		Vector2i(point.x    , point.y + 1)
		]
	return points

func extend(point: Vector2i):
	add_forbidden(point)
	_allowed_points.erase(point)
	var new_points = get_neighbor_points(point)
	for new_point in new_points:
		if(
			not _allowed_points.has(new_point) and
			not _forbidden_points.has(new_point)
			):
			add_allowed(new_point)
