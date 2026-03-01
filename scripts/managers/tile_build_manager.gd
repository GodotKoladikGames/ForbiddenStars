class_name TileBuildManager extends Node

@export var builder: TileBuilder
signal flip_request()
signal assept_request()
signal rotate_next_request()
signal rotate_prev_request()
signal position_next_request()
signal position_prev_request()

func _on_flip_requested():
	builder.flip_tile()

func _on_assept_requested():
	builder.assept_tile()

func _on_rotate_next_requested():
	builder.rotate_next_tile()

func _on_rotate_prev_requested():
	builder.rotate_prev_tile()

func _on_position_next_requested():
	builder.position_next()

func _on_position_prev_requested():
	pass

func setup(_builder):
	builder = _builder
	
func _init() -> void:
	flip_request.connect(_on_flip_requested)
	assept_request.connect(_on_assept_requested)
	rotate_next_request.connect(_on_rotate_next_requested)
	rotate_prev_request.connect(_on_rotate_prev_requested)
	position_next_request.connect(_on_position_next_requested)
	position_prev_request.connect(_on_position_prev_requested)
