class_name TileSprite extends Sprite3D

static var textures: Dictionary = load_textures()
var prop

const _paths = {
	"1b": "uid://dssaaf0m7aqxh",
	"2b": "uid://bnmhxfmuqxufx"
	}


func _ready():
	var p = get_parent() as Tile
	var _num = p.number
	#print("number tile ", num)
	

func change_texture():
	texture = textures[2]
	var _texture_width = texture.get_width()
	var _texture_height = texture.get_height()

func texture_fit(_width, _height):
	var texture_width = texture.get_width()
	var texture_height = texture.get_height()
	var scale_x = _width / (texture_width * pixel_size)
	var scale_z = _height / (texture_height * pixel_size)
	scale.x = scale_x
	scale.y = scale_z

static func load_textures():
	print("🔄 Загрузка текстур...")
	var result = {}
	result[1] = load(_paths["1b"])
	result[2] = load(_paths["2b"])
	print("✅ Загружено ", result.size(), " текстур")
	return result
