extends Node3D

@export var index_baju: int
@export var index_topi: int
@export var index_kacamata: int
@export var index_sepatu: int
@onready var char_cewe: Node3D = $Female
@onready var char_cowo: Node3D = $Male

func _ready() -> void:
	if Global.character == true:
		char_cewe.visible = false
		char_cowo.visible = true
	else:
		char_cewe.visible = true
		char_cowo.visible = false
	_kacamata(Global.global_index_kacamata)
	topi(Global.global_index_topi)
	baju(Global.global_index_baju)
	sepatu(Global.global_index_sepatu)
func _kacamata(x: int) -> void:
	
		
	match x:
		0:
			$Male/Male/Cowo/Skeleton3D/Kacamata1_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Kacamata2_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Kacamata3_001.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Kacamata1.visible = false
			$Female/Female/Cewe/Skeleton3D/Kacamata2.visible = false
			$Female/Female/Cewe/Skeleton3D/Kacamata3.visible = false
		1:
			$Male/Male/Cowo/Skeleton3D/Kacamata1_001.visible = true
			$Male/Male/Cowo/Skeleton3D/Kacamata2_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Kacamata3_001.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Kacamata1.visible = true
			$Female/Female/Cewe/Skeleton3D/Kacamata2.visible = false
			$Female/Female/Cewe/Skeleton3D/Kacamata3.visible = false
		2:
			$Male/Male/Cowo/Skeleton3D/Kacamata1_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Kacamata2_001.visible = true
			$Male/Male/Cowo/Skeleton3D/Kacamata3_001.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Kacamata1.visible = false
			$Female/Female/Cewe/Skeleton3D/Kacamata2.visible = true
			$Female/Female/Cewe/Skeleton3D/Kacamata3.visible = false
		3:
			$Male/Male/Cowo/Skeleton3D/Kacamata1_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Kacamata2_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Kacamata3_001.visible = true
			
			$Female/Female/Cewe/Skeleton3D/Kacamata1.visible = false
			$Female/Female/Cewe/Skeleton3D/Kacamata2.visible = false
			$Female/Female/Cewe/Skeleton3D/Kacamata3.visible = true

func topi(x:int):
	match x:
		0:
			$Male/Male/Cowo/Skeleton3D/Topi1_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Topi2_002.visible = false
			$Male/Male/Cowo/Skeleton3D/Topi3_001.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Topi1.visible = false
			$Female/Female/Cewe/Skeleton3D/Topi2.visible = false
			$Female/Female/Cewe/Skeleton3D/Topi3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Ratu_002.visible = true
		1:
			$Male/Male/Cowo/Skeleton3D/Topi1_001.visible = true
			$Male/Male/Cowo/Skeleton3D/Topi2_002.visible = false
			$Male/Male/Cowo/Skeleton3D/Topi3_001.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Topi1.visible = true
			$Female/Female/Cewe/Skeleton3D/Topi2.visible = false
			$Female/Female/Cewe/Skeleton3D/Topi3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Ratu_002.visible = true
		2:
			$Male/Male/Cowo/Skeleton3D/Topi1_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Topi2_002.visible = true
			$Male/Male/Cowo/Skeleton3D/Topi3_001.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Topi1.visible = false
			$Female/Female/Cewe/Skeleton3D/Topi2.visible = true
			$Female/Female/Cewe/Skeleton3D/Topi3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/Ratu_002.visible = false
		3:
			$Male/Male/Cowo/Skeleton3D/Topi1_001.visible = false
			$Male/Male/Cowo/Skeleton3D/Topi2_002.visible = false
			$Male/Male/Cowo/Skeleton3D/Topi3_001.visible = true
			
			$Female/Female/Cewe/Skeleton3D/Topi1.visible = false
			$Female/Female/Cewe/Skeleton3D/Topi2.visible = false
			$Female/Female/Cewe/Skeleton3D/Topi3.visible = true
			
			$Female/Female/Cewe/Skeleton3D/Ratu_002.visible = false
func baju(x:int):
	match x:
		0:
			$Male/Male/Cowo/Skeleton3D/Baju0.visible = true
			$Male/Male/Cowo/Skeleton3D/Baju1.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju2.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/BajuRatu0.visible = true
			$Female/Female/Cewe/Skeleton3D/BajuRatu1.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu2.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu3.visible = false
		1:
			$Male/Male/Cowo/Skeleton3D/Baju0.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju1.visible = true
			$Male/Male/Cowo/Skeleton3D/Baju2.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/BajuRatu0.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu1.visible = true
			$Female/Female/Cewe/Skeleton3D/BajuRatu2.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu3.visible = false
		2:
			$Male/Male/Cowo/Skeleton3D/Baju0.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju1.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju2.visible = true
			$Male/Male/Cowo/Skeleton3D/Baju3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/BajuRatu0.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu1.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu2.visible = true
			$Female/Female/Cewe/Skeleton3D/BajuRatu3.visible = false
		3:
			$Male/Male/Cowo/Skeleton3D/Baju0.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju1.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju2.visible = false
			$Male/Male/Cowo/Skeleton3D/Baju3.visible = true
			
			$Female/Female/Cewe/Skeleton3D/BajuRatu0.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu1.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu2.visible = false
			$Female/Female/Cewe/Skeleton3D/BajuRatu3.visible = true

func sepatu(x: int):
	match x:
		0:
			$Male/Male/Cowo/Skeleton3D/SepatuCowo.visible = true
			$Male/Male/Cowo/Skeleton3D/SepatuCowo1.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo2.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/SepatuRatu0.visible = true
			$Female/Female/Cewe/Skeleton3D/SepatuRatu1.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu2.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu3.visible = false
		1:
			$Male/Male/Cowo/Skeleton3D/SepatuCowo.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo1.visible = true
			$Male/Male/Cowo/Skeleton3D/SepatuCowo2.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/SepatuRatu0.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu1.visible = true
			$Female/Female/Cewe/Skeleton3D/SepatuRatu2.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu3.visible = false
		2:
			$Male/Male/Cowo/Skeleton3D/SepatuCowo.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo1.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo2.visible = true
			$Male/Male/Cowo/Skeleton3D/SepatuCowo3.visible = false
			
			$Female/Female/Cewe/Skeleton3D/SepatuRatu0.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu1.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu2.visible = true
			$Female/Female/Cewe/Skeleton3D/SepatuRatu3.visible = false
		3:
			$Male/Male/Cowo/Skeleton3D/SepatuCowo.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo1.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo2.visible = false
			$Male/Male/Cowo/Skeleton3D/SepatuCowo3.visible = true
			
			$Female/Female/Cewe/Skeleton3D/SepatuRatu0.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu1.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu2.visible = false
			$Female/Female/Cewe/Skeleton3D/SepatuRatu3.visible = true
