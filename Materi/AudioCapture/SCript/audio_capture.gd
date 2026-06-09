extends Control

@onready
var spectrum = AudioServer.get_bus_effect_instance(1,0)

const VU_COUNT = 16
const HEIGHT = 60
const FREQ_MAX = 11050.0

const MIN_DB = 60

func _process(delta):
	var prev_hz = 0
	var hz = FREQ_MAX / VU_COUNT;
	var f = spectrum.get_magnitude_for_frequency_range(prev_hz,hz)
	var energy = clamp((MIN_DB + linear_to_db(f.length()))/MIN_DB,0,1)
	var height = energy * HEIGHT
	
	prev_hz = hz
	$Sprite2D.position.y = height *-1
