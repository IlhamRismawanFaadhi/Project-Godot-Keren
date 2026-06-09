@tool
extends Marker2D

@export var tracking_position_y: bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if tracking_position_y == true:
		$Label.text = str(position.y)
	elif tracking_position_y == false:
		$Label.text = str(position.x)
func _process(delta: float) -> void:
	if tracking_position_y == true:
		$Label.text = str(position.y)
	elif tracking_position_y == false:
		$Label.text = str(position.x)
