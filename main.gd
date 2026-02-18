extends Node

func _ready():
	print("ke")
	
	var array_squad1 = OrksEvilSunz.get_test_squad1()
	var array_squad2 = Ultramarines.get_test_squad1()
	var squad1 = UnitGroup.from_array(array_squad1)
	var squad2 = UnitGroup.from_array(array_squad2)
	var battle = Battle.new(squad1, squad2)
	battle.step1()
	battle.step2()
