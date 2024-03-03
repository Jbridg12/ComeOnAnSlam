/// @description Insert description here
// You can write your code in this editor


if(curr_realm != last_realm && curr_realm >= 0)
{
	if(curr_bgm) audio_stop_sound(curr_bgm);
	curr_bgm = audio_play_sound(ds_map_find_value(bgm_map, curr_realm), 1, true);
	last_realm = curr_realm;
}


if(ds_map_exists(room_map, room))
{
	var _data = ds_map_find_value(room_map, room)
	instance_destroy(obj_collectible_parent);
	instance_destroy(obj_obstacle);
	
	// Uncomment if loading enemy data
	//instance_destroy(obj_enemy);
	
	var _coll_list = _data.collectibles;
	var _enemy_list = _data.enemies;
	var _obstacle_list = _data.obstacles;
	
	for(var i = 0; i < max(ds_list_size(_enemy_list), ds_list_size(_coll_list)); i++)
	{
		var _struct_coll = noone;
		var _struct_enemy = noone;
		var _struct_obs = noone;
		var _inst = noone;
		
		if(ds_list_size(_enemy_list) > i)
		{
			_struct_enemy = ds_list_find_value(_enemy_list, i);
		}
		if(ds_list_size(_coll_list) > i)
		{
			_struct_coll = ds_list_find_value(_coll_list, i);
		}
		if(ds_list_size(_obstacle_list) > i)
		{
			_struct_obs = ds_list_find_value(_obstacle_list, i);
		}
		
		if(_struct_coll)
		{
			_inst = instance_create_layer(_struct_coll.x, _struct_coll.y, "Instances", asset_get_index(_struct_coll.object));
			_inst.image_xscale = _struct_coll.x_scale;
			_inst.image_yscale = _struct_coll.y_scale;
		
		}
		
		// Load Enemy Data
		//if(_struct_enemy)
		//{
		//	_inst = instance_create_layer(_struct_enemy.x, _struct_enemy.y, "Instances", asset_get_index(_struct_enemy.object));
		//	_inst.image_xscale = _struct_enemy.x_scale;
		//	_inst.image_yscale = _struct_enemy.y_scale;
		//	_inst.follow_path = asset_get_index(_struct_enemy.path);
		//	_inst.absolute_path = _struct_enemy.absolute;
		//	_inst.path_action = _struct_enemy.path_action;
		//	_inst.detection_radius = _struct_enemy.detect;
			
		//}
		
		if(_struct_obs)
		{
			_inst = instance_create_layer(_struct_obs.x, _struct_obs.y, "Instances", asset_get_index(_struct_obs.object));
			_inst.image_xscale = _struct_obs.x_scale;
			_inst.image_yscale = _struct_obs.y_scale;
			_inst.active = _struct_obs.active;
			_inst.room_index = _struct_obs.room_index;
		}	
	}
}

// Reattach interactibles to associated objects
with(obj_interactible)
{
	event_user(1);	
}

// Initialize Obstacle Speeds
with(obj_gate)
{
	event_user(2);	
}