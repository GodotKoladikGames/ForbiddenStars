class_name Battle extends RefCounted

var def_group: UnitGroup
var atk_group: UnitGroup
var diceset_def: DiceSet
var diceset_atk: DiceSet

func step1():
	print("Battlestep1")
	var def_dicenum = min(def_group.get_power(), 8)
	var atk_dicenum = min(atk_group.get_power(), 8)
	print("Atkgroup dicenum: ", atk_dicenum)
	print("Defgroup dicenum: ", def_dicenum)
	diceset_atk = DiceSet.new(atk_dicenum)
	diceset_def = DiceSet.new(def_dicenum)
	print("Attack ", diceset_atk)
	print("Defender ", diceset_def)

func step2():
	print("Battlestep2")
	var bolters_atk = diceset_atk.count(Dice.BOLTER)
	var shields_atk = diceset_atk.count(Dice.SHIELD)
	var bolters_def = diceset_def.count(Dice.BOLTER)
	var shields_def = diceset_def.count(Dice.SHIELD)
	var damage_def =  bolters_atk - shields_def
	var damage_atk =  bolters_def - shields_atk
	print("damage to def: ", damage_def)
	print("damage to atk: ", damage_atk)
	
	

func _init(_def_group, _atk_group):
	def_group = _def_group
	atk_group = _atk_group
