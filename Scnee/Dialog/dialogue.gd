extends Control

@export var array_dialog: Array[String] = ["contoh ni yah", "dialog kedua", "dialog ketiga"]
@export var reveal_speed: float = 0.1  # Kecepatan reveal teks (detik per karakter)
@export var text_display_time: float = 2.0  # Durasi berapa lama teks muncul (detik)
@export var array_voice: Array[AudioStream] = []  # Array untuk menyimpan suara tiap dialog

@onready var label: Label = $Control/TextureRect/Label
@onready var label_background: Label = $Control/TextureRect/LabelBackground
@onready var audio_player: AudioStreamPlayer = $AudioPercakapan  # Node pemutar suara
var is_never_played: bool = false
var current_dialog_index: int = 0  # Indeks dialog yang sedang ditampilkan
@export var on_start_dialogue: bool = true
@export var change_scnee_end:  bool = false
@export var scnee_path: String

func _ready() -> void:
	visible = false
	if on_start_dialogue == true:
		
		start_dialog()

# Fungsi untuk memulai dialog
func start_dialog() -> void:
	# Reset label
	visible = true
	label.text = ""
	label_background.text = ""
	# Mulai menampilkan dialog secara bertahap
	_show_dialog_text()

# Fungsi untuk menampilkan teks
func _show_dialog_text() -> void:
	while current_dialog_index < array_dialog.size():
		# Ambil teks dari array dialog
		var dialog_text = array_dialog[current_dialog_index]
		
		# Reset label
		label.text = ""
		label_background.text = ""
		
		# Cek apakah ada suara yang tersedia untuk dialog ini
		if current_dialog_index < array_voice.size() and array_voice[current_dialog_index] != null:
			audio_player.stream = array_voice[current_dialog_index]
			audio_player.play()

			# Tampilkan teks bersamaan dengan suara
			await _type_text(dialog_text)

			# Tunggu sampai suara selesai diputar
			await audio_player.finished
		else:
			# Jika tidak ada suara, tampilkan teks seperti biasa
			await _type_text(dialog_text)
			# Tunggu beberapa detik sesuai dengan text_display_time
			await get_tree().create_timer(text_display_time).timeout
		
		# Pindah ke dialog berikutnya
		current_dialog_index += 1

	# Kondisi selesai dialog
	_on_dialog_finish()

# Fungsi untuk mengetik teks secara bertahap
func _type_text(dialog_text: String) -> void:
	for i in range(dialog_text.length()):
		# Tambahkan karakter per karakter ke label
		label.text += dialog_text[i]
		label_background.text += dialog_text[i]  # Jika background perlu menampilkan teks juga
		
		# Tunggu sesuai reveal_speed sebelum menampilkan karakter berikutnya
		await get_tree().create_timer(reveal_speed).timeout

# Fungsi untuk menangani kondisi selesai dialog
func _on_dialog_finish() -> void:
	label.text = ""
	label_background.text = ""
	$AnimationPlayer.play_backwards("in")
	if change_scnee_end:
		Transition.change_scnee(scnee_path)

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	pass
