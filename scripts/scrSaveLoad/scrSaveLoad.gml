// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game()
{
	// Write save data from player and manager to an array
	var _array = [];
	
	with (obj_player)
	{
		var _struct = 
		{
			x : x,
			y : y,
			image_index : image_index,
			primary_enabled : primary_enabled,
			ranged_enabled : ranged_enabled,
			wall_jump_enabled : wall_jump_enabled,
			charge_attack_enabled : charge_attack_enabled,
			dummy_enabled : dummy_enabled,
			charged_vert_enabled : charged_vert_enabled,
			max_health : max_health,
			weapon_id : weapon_id,
			max_ammo : max_ammo
		};
		
		array_push(_array, _struct);
	}
	
	with (obj_game_manager)
	{

		event_user(0);
		
		//ds_map_read(_map_copy, ds_map_write(room_map));
		//for (var k = ds_map_find_first(_map_copy); !is_undefined(k); k = ds_map_find_next(_map_copy, k))
		//{
		//  var v = _map_copy[? k];
		//  v.obstacles = json_encode(v.obstacles);
		//  v.collectibles = json_encode(v.collectibles);
		//  v.enemies = json_encode(v.enemies);
		//  v.interactible = json_encode(v.interactible);
		//}
		
		var _struct =
		{
			room_map : _room_map,
			curr_room : room,
			boss_defeated : boss_defeated
		};
		
		array_push(_array, _struct);
	}
	
	var _stringify = json_stringify(_array);
	//var _encode = json_encode(_array);
	show_debug_message(_stringify);
	var _file = file_text_open_write("save.txt");
	
	file_text_write_string(_file, _stringify);
	
	file_text_close(_file);
}

function load_game()
{
	
	if(file_exists("save.txt"))
	{
		var _file = file_text_open_read("save.txt");
		
		var _json = file_text_read_string(_file);
		var _array = json_parse(_json);
		//var _map = json_decode(_array[@1].room_map);
		
		//for (var k = ds_map_find_first(_map); !is_undefined(k); k = ds_map_find_next(_map, k))
		//{
		//  var v = _map[? k];
		//  v.obstacles = json_encode(v.obstacles);
		//  v.collectibles = json_encode(v.collectibles);
		//  v.enemies = json_encode(v.enemies);
		//  v.interactible = json_encode(v.interactible);
		//}
		//ds_map_copy(obj_game_manager.room_map, (room_map)_array[@1].room_map);
		
		obj_game_manager._room_map = _array[@1].room_map;
		obj_game_manager.room_entrance_id = -1;
		obj_game_manager.boss_defeated = _array[1].boss_defeated;
		room_goto(_array[1].curr_room);
		
		instance_destroy(obj_player);
		var inst = instance_create_layer(_array[0].x, _array[0].y, "Instances", obj_player);
		
		with(obj_player)
		{
			forced_x = _array[0].x;
			forced_y = _array[0].y;
			image_index = _array[0].image_index;
			ranged_enabled = _array[0].ranged_enabled;
			primary_enabled = _array[0].primary_enabled;
			wall_jump_enabled = _array[0].wall_jump_enabled;
			charge_attack_enabled = _array[0].charge_attack_enabled;
			dummy_enabled = _array[0].dummy_enabled;
			charged_vert_enabled = _array[0].charged_vert_enabled;
			max_health = _array[0].max_health;
			weapon_id = _array[0].weapon_id;
			hp = max_health;
			max_ammo = max_ammo;
			current_ammo = max_ammo;
		}
		
		
		file_text_close(_file);
	}
	
}