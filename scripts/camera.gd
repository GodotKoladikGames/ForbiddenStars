class_name GameCamera extends Camera3D

var rotate_speed = 0.01
const MIN_PITCH = deg_to_rad(-89.0)
const MAX_PITCH = deg_to_rad(89.0)

func _on_slide(delta: Vector2):
	var dx = delta.x * rotate_speed
	var dy = delta.y * rotate_speed
	# Поворот вокруг локальной горизонтали (pitch)
	var pitch = clamp(rotation.x + dy, MIN_PITCH, MAX_PITCH)
	rotation.x = pitch
	# Поворот вокруг локальной вертикали (yaw)
	rotate_y(dx)


func _enter_tree() -> void:
	gesture_manager.slide.connect(_on_slide)
