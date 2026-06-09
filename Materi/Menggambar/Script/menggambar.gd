extends Control

@onready var lines: Node2D = $Lines
var color_line: Color = Color("#525252")#525252
var line_boldness: float = 100
var is_pen: bool = true

var _pressed: bool = false
var _current_line: Line2D
var _was_outside: bool = false  # Menandai apakah pemain sebelumnya keluar dari batas

const MIN_X = 456
const MAX_X = 1946
const MIN_Y = 160
const MAX_Y = 936
func  _ready() -> void:
	line_boldness = $VSlider.value * 10
func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		_pressed = event.pressed
		if _pressed:
			var pos = event.position
			# Mulai garis baru hanya jika posisi dalam batas
			if is_within_bounds(pos):
				start_new_line(pos)
				_was_outside = false  # Reset status
			else:
				_was_outside = true  # Tandai bahwa pemain mulai di luar batas
	
	elif event is InputEventScreenDrag and _pressed:
		var pos = event.position
		$Mouse_follower.position = pos
		if is_pen:
			$Mouse_follower/Pen.visible = true
			$Mouse_follower/Penghapus.visible = false
			$Mouse_follower/Area2D.is_erase = false
		else :
			$Mouse_follower/Pen.visible = false
			$Mouse_follower/Penghapus.visible = true
			$Mouse_follower/Area2D.is_erase = true
			
		if is_within_bounds(pos):
			if _was_outside:
				# Jika sebelumnya keluar batas, buat garis baru
				start_new_line(pos)
				_was_outside = false  # Reset status keluar batas
			_current_line.add_point(pos)
		else:
			_was_outside = true  # Tandai bahwa pemain keluar batas
		line_boldness = $VSlider.value * 10
		$Mouse_follower/Area2D/CollisionShape2D.shape.radius = $VSlider.value * 5 

# Fungsi untuk memeriksa apakah posisi dalam batas
func is_within_bounds(pos: Vector2) -> bool:
	return pos.x >= MIN_X and pos.x <= MAX_X and pos.y >= MIN_Y and pos.y <= MAX_Y

# Fungsi untuk memulai garis baru
func start_new_line(start_pos: Vector2):
	_current_line = Line2D.new()
	_current_line.default_color = color_line
	_current_line.width = line_boldness
	_current_line.begin_cap_mode = Line2D.LINE_CAP_ROUND
	_current_line.end_cap_mode = Line2D.LINE_CAP_ROUND
	_current_line.joint_mode = Line2D.LINE_JOINT_ROUND
	_current_line.add_point(start_pos)  # Tambahkan titik awal
	lines.add_child(_current_line)


func _on_blue_pressed() -> void:
	color_line = Color("#7099ff")
	is_pen = true


func _on_yelow_pressed() -> void:
	color_line = Color("#fae380")
	is_pen = true


func _on_red_pressed() -> void:
	color_line = Color("#ec6166")
	is_pen = true

func _on_green_pressed() -> void:
	color_line = Color("#4bd84a")
	is_pen = true

func _on_black_pressed() -> void:
	color_line = Color("#525252")
	is_pen = true

func _on_penghapus_pressed() -> void:
	color_line = Color("ffffff")
	is_pen = false
