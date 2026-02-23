@tool
extends EditorPlugin

var inspector

func _enter_tree():
	print("test pluginp")
	inspector = get_editor_interface().get_inspector()
	print(inspector)
