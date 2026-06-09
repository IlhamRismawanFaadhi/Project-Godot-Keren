extends Button
@export var path_to: String = ""



func _on_pressed() -> void:
	if pressed :
		if path_to != "":
			Transition.change_scnee(path_to)
