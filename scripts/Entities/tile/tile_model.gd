class_name TileModel extends Node3D

@export var menu: TileMenu
var player: AnimationPlayer

func _on_flip_pressed():
	player.play("Rotate Up to Down")

func _on_rotate_pressed():
	pass

func _ready() -> void:
	menu.flip_button.pressed.connect(_on_flip_pressed)
	

func _enter_tree() -> void:
	player = get_node("AnimationPlayer")
	
