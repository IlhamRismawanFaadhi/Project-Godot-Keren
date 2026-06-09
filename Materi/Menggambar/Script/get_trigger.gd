extends StaticBody2D

@export var can_salah : bool =false
var _salah : bool = false:
	get:
		return _salah
	set(value):
		_salah = value
		#print("Kondisi Salah : ", _salah)
var _disabled : bool = false:
	get:
		return _disabled
	set(value):
		_disabled = value	
		
func _ready() -> void:
	_disabled = false
	
