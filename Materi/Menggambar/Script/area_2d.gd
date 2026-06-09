extends Area2D

var is_erase: bool = false


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("PerfectioAarea"):
		if is_erase:
			
			body._disabled = false
			if body.can_salah == true:
				body._salah = false
		else :
			body._disabled = true
			if body.can_salah == true:
				body._salah = true
