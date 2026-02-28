class_name TileModel extends Node3D

@export var menu: TileMenu
var player: AnimationPlayer
var _tween: Tween

func _on_tween_finished():
	if rotation.x >= 2*PI:
		rotation.x = 0
	if rotation.y >= 2*PI:
		rotation.y = 0

func _on_flip_pressed():
	animated_flip()

func _on_rotate_pressed():
	animated_rotate()

func animated_flip():
	if _tween != null and _tween.is_running():
		return
	_tween = create_tween()
	_tween.set_trans(Tween.TRANS_SINE)
	_tween.set_ease(Tween.EASE_IN_OUT)
	_tween.tween_property(self, "rotation:x", rotation.x + PI, 1)
	_tween.finished.connect(_on_tween_finished)

func animated_rotate():
	if _tween != null and _tween.is_running():
		return
	_tween = create_tween()
	_tween.set_trans(Tween.TRANS_SINE)
	_tween.set_ease(Tween.EASE_IN_OUT)
	_tween.tween_property(self, "rotation:y", rotation.y + PI/2, 1)
	_tween.finished.connect(_on_tween_finished)

func _ready() -> void:
	menu.flip_button.pressed.connect(_on_flip_pressed)
	menu.rotate_button.pressed.connect(_on_rotate_pressed)
	

func _enter_tree() -> void:
	player = get_node("AnimationPlayer")
	
