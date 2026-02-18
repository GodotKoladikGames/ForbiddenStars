class_name DiceSet extends RefCounted

var _dice_set: Array[Dice] = []
var dice_count = {
	Dice.BOLTER: 0,
	Dice.SHIELD: 0,
	Dice.AQUILA: 0
}

func count(type: int):
	return dice_count[type]

func _recount():
	dice_count[Dice.BOLTER] = 0
	dice_count[Dice.SHIELD] = 0
	dice_count[Dice.AQUILA] = 0
	for dice in _dice_set:
		dice_count[dice.type] += 1

func _init(num=8):
	for i in range(num):
		var dice = Dice.from_roll()
		_dice_set.append(dice)
	_recount()

func _to_string() -> String:
	var res = "DiceSet:"
	for dice in _dice_set:
		res = res + " " + dice.get_strval()
	return res
