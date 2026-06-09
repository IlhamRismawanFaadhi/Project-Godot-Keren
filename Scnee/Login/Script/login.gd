extends Control
@onready var masukkan_nama = $Control2/VBoxContainer/TextEdit
func _ready() -> void:
	$Control2/VBoxContainer/Error.visible = false
	$CharacterSelection.visible = false
func _on_button_pressed() -> void:
	if masukkan_nama.text != "":
		Global.nama_pemain = masukkan_nama.text
		$Control2.visible = false
		$CharacterSelection.visible = true
	else:
		$Control2/VBoxContainer/Error.visible = true
