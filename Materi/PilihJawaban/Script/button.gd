extends Button

@export var salah : bool = false
@export var get_win : bool = false
@export var next_level : String = ""
@export var get_reward:bool
@export var jenis_reward: int
@export var index_reward: int 
@export var affirmation: bool = false
@export var affirmation_dialogue: Control

func _ready() -> void:
	$TextureRect.visible = false

func _on_pressed() -> void:
	if salah == true:
		$TextureRect.visible = true
		disabled = true
	else:
		if get_win == true:
			if get_reward:
				match jenis_reward:
					0:
						Global.reward_topi[index_reward] = true
					1:
						Global.reward_kacamata[index_reward]= true
					2:
						Global.reward_baju[index_reward]= true
					3:
						Global.reward_sepatu[index_reward]= true
			if affirmation == true and affirmation_dialogue != null:
				affirmation_dialogue.start_dialog()
				affirmation_dialogue.scnee_path = next_level
			else:
				
				Transition.change_scnee(next_level)
