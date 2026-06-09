extends Node3D


func _ready() -> void:
	$AnimationPlayer.play("move")
func _process(delta: float) -> void:
	if Global.character == true:
		$Character/Female.visible = false
		$Character/Male.visible = true
	else:
		$Character/Female.visible = true
		$Character/Male.visible = false
func _on_button_pressed() -> void:
	print(Global.character)
	if Global.character == true:
		Global.character = false
	else:
		Global.character = true
func _on_button_2_pressed() -> void:
	print(Global.character)
	if Global.character == true:
		Global.character = false
	else:
		Global.character = true

func _on_button_next_pressed() -> void:
	Transition.change_scnee("res://Scnee/MenuUtama/menu_utama.tscn")
