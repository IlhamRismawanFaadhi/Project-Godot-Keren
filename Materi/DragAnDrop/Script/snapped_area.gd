extends Area2D

var is_snap_track : bool = false
var getting_snap : bool = false
var pos_snap : Vector2
@export var center_pos: Sprite2D
var active: bool = false

func _process(_delta: float) -> void:
	if $TextureButton.global_position == $".".global_position:
		$TextureButton.MOUSE_FILTER_PASS
	else:
		$TextureButton.MOUSE_FILTER_STOP
	if active == true:
		
		if is_snap_track == false:
			global_position = get_global_mouse_position()
		else:
			global_position = Vector2(center_pos.global_position)
			if pos_snap != Vector2.ZERO:
				global_position = pos_snap
			else:
				global_position = Vector2(center_pos.global_position)
func reset():
	active = true
	is_snap_track = false
	global_position = $".".global_position

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("jawaban"):
		is_snap_track = false
		#pos_snap = body.global_position
		#is_snap_track = true


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jawaban"):
		pass
		pos_snap = body.global_position
		is_snap_track = true
		


func _on_texture_button_pressed() -> void:
	if is_snap_track == true:
		is_snap_track = false
	else:
		is_snap_track = true
