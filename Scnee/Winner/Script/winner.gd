extends Control

var move_1: bool = false

func  _ready() -> void:
	$Panel.visible = false
	$Panel.mouse_filter = MOUSE_FILTER_STOP
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var accel = Input.get_accelerometer()

	# Memeriksa jika y berada dalam range yang benar
	if accel.y < -7.1 and accel.y >= -7.2 and not move_1:
		move_1 = true
		# mengaktifkan sesuatu
	# Jika move_1 aktif, cek jika y di bawah -9.1 dan di atas -9.2
	if move_1 and (accel.y < -8.1 and accel.y >= -8.2):
		selesai()
func selesai():
	$Panel.visible = false
	$Panel.mouse_filter = MOUSE_FILTER_IGNORE
