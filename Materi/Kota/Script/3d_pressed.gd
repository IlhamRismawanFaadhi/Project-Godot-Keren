extends Area3D


@export var nama_level : String = "Level 1"
@export var path_level : String = ""
@export var jenis_reward: int
@export var index_reward: int 
var sudah_selesai: bool

func _ready() -> void:
	$CollisionShape3D.disabled = true
	$Label3d/SubViewport/Label.text = str(nama_level)
	$AnimationPlayer.play("Reveal")
	$MeshInstance3D.visible = false
	$SudahSelesai.visible = false
	match jenis_reward:
		0:
			if Global.reward_topi[index_reward] == true:
				$SudahSelesai.visible = true
		1:
			if Global.reward_kacamata[index_reward] == true:
				$SudahSelesai.visible = true
		2:
			if Global.reward_baju[index_reward]== true:
				$SudahSelesai.visible = true
		3:
			if Global.reward_sepatu[index_reward]== true:
				$SudahSelesai.visible = true

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventScreenTouch:
		if event.pressed:
			if path_level != "":
				
				Transition.change_scnee(path_level)


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	$CollisionShape3D.disabled = false
