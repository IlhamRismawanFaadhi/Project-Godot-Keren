extends Node3D

var index: int = 0
const MAX_INDEX: int = 3
@onready var label_disable = $UI/DisabledLabel
@onready var button_next = $UI/ButtonNext
var consideration = [true,true,true,true]
func _ready() -> void:
	
	$AnimationPlayer.play("move")
	locked()
func locked():
	
	if consideration[0] == false or consideration[1] == false or consideration[2] == false or consideration[3]==false:
		label_disable.visible = true
		button_next.disabled = true
	else:
		label_disable.visible = false
		button_next.disabled = false
func _on_topi_kiri_pressed() -> void:
	if Global.global_index_topi < Global.max_index_topi:
		Global.global_index_topi +=1
	else:
		Global.global_index_topi = 0
	$Character.topi(Global.global_index_topi)
	if Global.global_index_topi != 0:
		if Global.reward_topi[Global.global_index_topi-1] == false:
			consideration[0] = false
			locked()
			
		else:
			consideration[0] = true
			locked()
			
	else:
		consideration[0] = true
		locked()
func _on_topi_kanan_pressed() -> void:
	if Global.global_index_topi > 0:
		Global.global_index_topi -= 1
	else:
		Global.global_index_topi = Global.max_index_topi
	$Character.topi(Global.global_index_topi)
	if Global.global_index_topi != 0:
		if Global.reward_topi[Global.global_index_topi-1] == false:
			consideration[0] = false
			locked()
		else:
			consideration[0] = true
			locked()
	else:
		consideration[0] = true
		locked()
func _on_kacamata_kiri_pressed() -> void:
	if Global.global_index_kacamata < Global.max_index_kacamata:
		Global.global_index_kacamata +=1
	else:
		Global.global_index_kacamata = 0
	$Character._kacamata(Global.global_index_kacamata)
	if Global.global_index_kacamata != 0:
		if Global.reward_kacamata[Global.global_index_kacamata-1] == false:
			consideration[1] = false
			locked()
		else:
			consideration[1] = true
			locked()
	else:
		consideration[1] = true
		locked()

func _on_kacamata_kanan_pressed() -> void:
	if Global.global_index_kacamata > 0:
		Global.global_index_kacamata -= 1
	else:
		Global.global_index_kacamata = Global.max_index_kacamata
	$Character._kacamata(Global.global_index_kacamata)
	if Global.global_index_kacamata != 0:
		if Global.reward_kacamata[Global.global_index_kacamata-1] == false:
			consideration[1] = false
			locked()
		else:
			consideration[1] = true
			locked()
	else:
		consideration[1] = true
		locked()

func _on_baju_kiri_pressed() -> void:
	if Global.global_index_baju < Global.max_index_baju:
		Global.global_index_baju +=1
	else:
		Global.global_index_baju = 0
	$Character.baju(Global.global_index_baju)
	if Global.global_index_baju != 0:
		if Global.reward_baju[Global.global_index_baju-1] == false:
			consideration[2] = false
			locked()
		else:
			consideration[2] = true
			locked()
	else:
		consideration[2] = true
		locked()
func _on_baju_kanan_pressed() -> void:
	if Global.global_index_baju > 0:
		Global.global_index_baju -= 1
	else:
		Global.global_index_baju = Global.max_index_baju
	$Character.baju(Global.global_index_baju)
	if Global.global_index_baju != 0:
		if Global.reward_baju[Global.global_index_baju-1] == false:
			consideration[2] = false
			locked()
		else:
			consideration[2] = true
			locked()
	else:
		consideration[2] = true
		locked()

func _on_sepatu_kiri_pressed() -> void:
	if Global.global_index_sepatu < Global.max_index_sepati:
		Global.global_index_sepatu +=1
	else:
		Global.global_index_sepatu = 0
	$Character.sepatu(Global.global_index_sepatu)
	if Global.global_index_sepatu != 0:
		if Global.reward_sepatu[Global.global_index_sepatu-1] == false:
			consideration[3] = false
			locked()
		else:
			consideration[3] = true
			locked()
	else:
		consideration[3] = true
		locked()
func _on_sepatu_kanan_pressed() -> void:
	if Global.global_index_sepatu > 0:
		Global.global_index_sepatu -= 1
	else:
		Global.global_index_sepatu = Global.max_index_sepati
	$Character.sepatu(Global.global_index_sepatu)
	if Global.global_index_sepatu != 0:
		if Global.reward_sepatu[Global.global_index_sepatu-1] == false:
			consideration[3] = false
			locked()
		else:
			consideration[3] = true
			locked()
	else:
		consideration[3] = true
		locked()

func _on_button_next_pressed() -> void:
	Transition.change_scnee("res://Scnee/MenuUtama/menu_utama.tscn")
