class_name GestureManager extends Node

signal slide(delta: Vector2)
#signal long_press()

var pressed: bool
var long_pressed: bool = false
var _last_position: Vector2
var _long_timer: Timer

func _on_long_timeout():
	long_pressed = true
	print("long press")

func _unhandled_input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			_last_position = event.position
			pressed = true
			_long_timer.stop()
			_long_timer.start(0.5)
		else:
			pressed = false
			long_pressed = false
			_long_timer.stop()
			
	if event is InputEventScreenDrag:
		if pressed and not long_pressed:
			_long_timer.stop()
		if long_pressed:
			var delta = _last_position - event.position
			_last_position = event.position
			slide.emit(delta)


func _enter_tree() -> void:
	_long_timer = Timer.new()
	_long_timer.one_shot = true
	add_child(_long_timer)
	_long_timer.timeout.connect(_on_long_timeout)
