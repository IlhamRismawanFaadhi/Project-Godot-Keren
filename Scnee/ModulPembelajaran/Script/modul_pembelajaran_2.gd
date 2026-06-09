extends Button

@export var nama_pembelajaran: String = ""
@export var path_pembelajaran: String = ""

func _ready() -> void:
	if nama_pembelajaran != "":
		
		$Control2/Label.text = str(nama_pembelajaran)


func _on_pressed() -> void:
	print("change scnee")
	if path_pembelajaran != "":
		Transition.change_scnee(path_pembelajaran)
	else:
		print("tidak ditemukan")
