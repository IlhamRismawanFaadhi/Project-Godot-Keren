extends Control

func _process(_delta: float) -> void:
	var child_win_count: int
	for child in $ButtonDrag.get_children():
		if child.win == true:
			child_win_count += 1
	if child_win_count == $ButtonDrag.get_child_count():
		$NextButton.visible = true
