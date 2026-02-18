class_name OrksEvilSunz extends Faction


static func get_test_squad1() -> Array[Unit]:
	var type_boyz = UnitType.new(2, 2, 1, 0)
	var type_nobz = UnitType.new(2, 3, 2, 0)
	var unit_array: Array[Unit] = [
		Unit.new(0, 0, type_boyz),
		Unit.new(0 ,0, type_boyz),
		Unit.new(0, 0, type_nobz)
	]
	return unit_array
