class_name Dice extends RefCounted
var type = NONE

enum {NONE, BOLTER, SHIELD, AQUILA}

static var type_str_link = {
  BOLTER: "bolter",
  SHIELD: "shield",
  AQUILA: "aquila"
}

static var side_type_link = {
	1: BOLTER,
	2: BOLTER,
	3: BOLTER,
	4: SHIELD,
	5: SHIELD,
	6: AQUILA
}

func reroll():
	var side = randi_range(1, 6)
	type = side_type_link[side]

func side2type(_val):
	return BOLTER
	
static func from_roll():
	var dice = new()
	dice.reroll()
	return dice

func get_strval():
	return type_str_link[type]

func _to_string() -> String:
	return "Dice: " + get_strval()
