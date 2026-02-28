class_name GridPoints extends RefCounted

var points: Dictionary[Vector2i, bool] = {}

func add(point: Vector2i) -> bool:
	if point in points:
		return false
	points[point] = true
	return true

func erase(point: Vector2i) -> bool:
	if point not in points:
		return false
	points.erase(point)
	return true

func get_all() -> Array[Vector2i]:
	return points.keys()

func extend(point: Vector2i):
	var new_points = [
		Vector2i(point.x - 1, point.y    ),
		Vector2i(point.x    , point.y - 1),
		Vector2i(point.x + 1, point.y    ),
		Vector2i(point.x    , point.y + 1)
		]
	for new_point in new_points:
		if new_point not in points:
			points[new_point] = true

func _has(point: Vector2i) -> bool:
	return point is Vector2i and points.has(point)
