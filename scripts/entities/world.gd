class_name World extends Node3D


var plane: Plane
@export var camera: Camera3D

func get_mouse_pos() -> Vector3:
	var view_pos =  get_viewport().get_mouse_position()
	var origin = camera.project_ray_origin(view_pos)
	var normal = camera.project_ray_normal(view_pos)
	var pos = plane.intersects_ray(origin, normal)
	return pos

func _ready() -> void:
	pass
	#DragAndDrop.setup(self)

func _init() -> void:
	plane = Plane(Vector3.UP, Vector3.ZERO)
