class_name TestObject extends StaticBody3D


func _input_event(
	camera: Camera3D,
	event: InputEvent,
	event_position: Vector3,
	normal: Vector3,
	shape_idx: int
):
	if OS.has_feature("mobile"):
		_touchcreen_input_event(camera, event, event_position, normal, shape_idx)
		return
	_mouse_input_event(camera, event, event_position, normal, shape_idx)

func _mouse_input_event(
	_camera: Camera3D,
	_event: InputEvent,
	_event_position: Vector3,
	_normal: Vector3,
	_shape_idx: int
):
	if _event is InputEventMouseButton:
		if _event.pressed:
			print("Mouse has pressed")
		else:
			print("Mouse has relised")

func _touchcreen_input_event(
	_camera: Camera3D,
	_event: InputEvent,
	_event_position: Vector3,
	_normal: Vector3,
	_shape_idx: int
):
	if _event is InputEventScreenTouch:
		if _event.pressed:
			print("Touchscreen pressed")
		else:
			print("Touchscreen unpressed")
	# print("Another touchscreen")
