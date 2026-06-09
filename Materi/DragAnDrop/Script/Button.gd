extends Button

var actived: bool = false
var win: bool = false
@export var win_pos: Sprite2D
func _ready() -> void:
		$Line2D.default_color = Color.CADET_BLUE
func _process(_delta: float) -> void:
	$Line2D.set_point_position(1, $SnappedArea.global_position - $Line2D.global_position)
	if win_pos != null:
		if $SnappedArea.global_position == win_pos.global_position:
			$Line2D.default_color = Color.GREEN
			win = true
		else:
			$Line2D.default_color = Color.CADET_BLUE
			win = false
func _on_pressed() -> void:
	$SnappedArea.reset() 
