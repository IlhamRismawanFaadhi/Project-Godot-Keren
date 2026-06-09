extends Button

@export var nama_pembelajaran: String = ""
@export var path_pembelajaran: String = ""

func _ready() -> void:
	$Control/Label.text = str(nama_pembelajaran)

func _on_pressed() -> void:
	print("klick")
	if path_pembelajaran != "":
		Transition.change_scnee(path_pembelajaran)
	else:
		print("tidak ditemukan")
