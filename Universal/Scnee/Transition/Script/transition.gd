extends CanvasLayer
func change_scnee(target: String) -> void:
	$AnimationPlayer.play("Change")
	await$AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("Change")

func open() -> void:
	$AnimationPlayer.play_backwards("Change")

func close() -> void:
	$AnimationPlayer.play("Change")
	await$AnimationPlayer.animation_finished
	get_tree().quit()
