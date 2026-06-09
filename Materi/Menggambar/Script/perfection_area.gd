extends Node2D
@export var presentase_selesai:float = 0.60
var maksimum_total_salah: int = 0
var persentase_berisi: int
var next_button_active: bool = false:
	get:
		return next_button_active
	set(value):
		next_button_active = value	
		if next_button_active == true:
			%Button.visible = true
		else:
			%Button.visible = false

func _ready() -> void:
	next_button_active = false
	%Button.visible = false
	for i in get_children():
		if i.can_salah == true:
			maksimum_total_salah += 1
	print("terdapat ",maksimum_total_salah, " total salah dari ", get_child_count())
func _process(delta: float) -> void:
	var activate_child: int
	
	var deactive_child: int
	for child in get_children():
		# Pastikan child memiliki properti _disabled
		if child._disabled == true:
			activate_child += 1
		if child._salah == true:
			deactive_child += 1
	if activate_child >= int((get_child_count()-maksimum_total_salah) * presentase_selesai) and deactive_child <= int(maksimum_total_salah * 0.01): 
		next_button_active = true
	else:
		next_button_active = false
