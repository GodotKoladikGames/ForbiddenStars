class_name Ultramarines extends Faction

static func get_test_squad1() -> Array[Unit]:
	var type_scout = UnitType.new(1, 2, 2, 0)
	var type_marin = UnitType.new(2, 3, 2, 0)
	var unit_array: Array[Unit] = [
		Unit.new(0, 0, type_scout),
		Unit.new(0 ,0, type_marin),
		Unit.new(0, 0, type_marin)
	]
	return unit_array
