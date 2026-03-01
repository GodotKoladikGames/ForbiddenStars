class_name GridPoints extends RefCounted

var points: Dictionary[Vector2i, int] = {}
var points_array: Array[Vector2i] = []

func size() -> int:
	return points_array.size()

func get_at(i: int) -> Vector2i:
	return points_array[i]

func add(point: Vector2i) -> bool:
	if points.has(point):
		return false
	points_array.append(point)
	points[point] = points_array.size() - 1  # 0-based index
	return true

func erase(point: Vector2i) -> bool:
	if not points.has(point):
		return false
	var idx: int = points[point]
	var last_idx: int = points_array.size() - 1
	var last_point: Vector2i = points_array.pop_back()
	# swap-remove if not removing last
	if idx != last_idx:
		points_array[idx] = last_point
		points[last_point] = idx
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
			self.add(new_point)

func _has(point: Vector2i) -> bool:
	return point is Vector2i and points.has(point)
