extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play("Mulai")


func _on_next_button_visibility_changed() -> void:
	play("popup")
