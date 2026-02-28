class_name TileBoxVisual extends Node3D

var player: AnimationPlayer
var _tween: Tween

func animated_flip():
	if _tween != null and _tween.is_running():
		return false
	_tween = create_tween()
	_tween.set_trans(Tween.TRANS_SINE)
	_tween.set_ease(Tween.EASE_IN_OUT)
	_tween.tween_property(self, "rotation:x", rotation.x + PI, 1)
	_tween.finished.connect(_on_tween_finished)

func animated_rotate():
	if _tween != null and _tween.is_running():
		return false
	_tween = create_tween()
	_tween.set_trans(Tween.TRANS_SINE)
	_tween.set_ease(Tween.EASE_IN_OUT)
	_tween.tween_property(self, "rotation:y", rotation.y + PI/2, 1)
	_tween.finished.connect(_on_tween_finished)

func _on_tween_finished():
	if rotation.x >= 2*PI:
		rotation.x = 0
	if rotation.y >= 2*PI:
		rotation.y = 0

func _enter_tree() -> void:
	player = get_node("AnimationPlayer")
