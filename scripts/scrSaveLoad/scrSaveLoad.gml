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
			ranged_enabled : ranged_enabled,
			wall_jump_enabled : wall_jump_enabled,
			charge_attack_enabled : charge_attack_enabled,
			dummy_enabled : dummy_enabled,
			charged_vert_enabled : charged_vert_enabled,
			max_health : max_health,
			max_ammo : max_ammo
		};
		
		array_push(_array, _struct);
	}
	
	with (obj_game_manager)
	{
		var _map_copy = ds_map_create();
		event_user(0);
		ds_map_copy(_map_copy, room_map);
		
		var _struct =
		{
			room_map : _map_copy,
			curr_room : room,
			boss_defeated : boss_defeated
		};
		
		array_push(_array, _struct);
	}
	
	var stringify = json_stringify(array);
	var file = file_text_open_write("save.txt");
	
	file_text_write_string(file, stringify);
	
	file_text_close(file);
}

function load_game()
{
	
	if(file_exists("save.txt"))
	{
		var file = file_text_open_read("save.txt");
		
		var json = file_text_read_string(file);
		var array = json_parse(json);
		
		
		ds_map_copy(obj_game_manager.room_map, array[@1].room_map);
		obj_game_manager.room_entrance_id = -1;
		obj_game_manager.boss_defeated = array[1].boss_defeated;
		room_goto(array[1].curr_room);
		
		instance_destroy(obj_player);
		var inst = instance_create_layer(array[0].x, array[0].y, "Instances", obj_player);
		
		with(obj_player)
		{
			forced_x = array[0].x;
			forced_y = array[0].y;
			image_index = array[0].image_index;
			ranged_enabled = array[0].ranged_enabled;
			wall_jump_enabled = array[0].wall_jump_enabled;
			charge_attack_enabled = array[0].charge_attack_enabled;
			dummy_enabled = array[0].dummy_enabled;
			charged_vert_enabled = array[0].charged_vert_enabled;
			max_health = array[0].max_health;
			hp = max_health;
			max_ammo = max_ammo;
			current_ammo = max_ammo;
		}
		
		
		file_text_close(file);
	}
	
}