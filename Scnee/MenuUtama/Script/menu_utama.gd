extends Control

func _ready() -> void:
	%SelamatDatang.text = str("Selamat datang "+ Global.nama_pemain)
	if Global.sudah_pernah_menu_utama_tutorial:
		$Dialogue.visible = false
	else:
		$Dialogue.visible = true
	if $Dialogue/AnimationPlayer.animation_finished:
		Global.sudah_pernah_menu_utama_tutorial = true
	
