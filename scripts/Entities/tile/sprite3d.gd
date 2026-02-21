extends Sprite3D

static var textures: Dictionary = load_textures()

const _paths = {
	"1a": "uid://dssaaf0m7aqxh",
	"1b": "uid://b0lhtd4qjrru"
	}

func change_texture():
	pass

static func load_textures():
	print("🔄 Загрузка текстур...")
	var result = {}
	result[1] = load(_paths["1a"])
	result[2] = load(_paths["1b"])
	print("✅ Загружено ", result.size(), " текстур")
	return result
