@tool
extends Sprite3D

static var textures: Dictionary = load_textures()
var prop
const _paths = {
	"1b": "uid://dssaaf0m7aqxh",
	"2b": "uid://bnmhxfmuqxufx"
	}

func _ready():
	#prop.property_changed.connect(_on_test)
	print("ready")
	var p = get_parent() as Tile
	var num = p.number
	print("number tile ", num)

func change_texture():
	pass

static func load_textures():
	print("🔄 Загрузка текстур...")
	var result = {}
	result[1] = load(_paths["1b"])
	result[2] = load(_paths["2b"])
	print("✅ Загружено ", result.size(), " текстур")
	return result
