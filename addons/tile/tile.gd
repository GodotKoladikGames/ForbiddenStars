@tool
extends EditorPlugin

func _on_property_edited(prop: String):
	print("_on_proprety_edited():")

func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	print("teest entertree")
	var insp := get_editor_interface().get_inspector()
	insp.property_edited.connect(_on_property_edited)
	# Initialization of the plugin goes here.
	pass


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	pass
