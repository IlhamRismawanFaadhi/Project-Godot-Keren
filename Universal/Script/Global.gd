extends Node

var nama_pemain: String 
var character: bool = false # jika false maka cewe jika true maka cowo
var sudah_pernah_menu_utama_tutorial: bool =false
var reward_topi = [false,false,false]
var reward_kacamata = [false,false,false]
var reward_baju = [false,false,false]
var reward_sepatu = [false,false,false]

var global_index_topi: int = 0;
var global_index_kacamata: int = 0;
var global_index_baju: int = 0;
var global_index_sepatu: int = 0;

var max_index_topi: int = 3;
var max_index_kacamata: int = 3;
var max_index_baju: int = 3;
var max_index_sepati: int = 3;
