/// @description Insert description here
// You can write your code in this editor


if(curr_realm != last_realm && curr_realm >= 0)
{
	if(curr_bgm) audio_stop_sound(curr_bgm);
	curr_bgm = audio_play_sound(ds_map_find_value(bgm_map, curr_realm), 1, true);
	
	switch(curr_realm)
	{
		case REALM.LIMBO:
			audio_sound_loop_start(curr_bgm, 19.2);
			audio_sound_loop_end(curr_bgm, 115.2);
			break;
		case REALM.LUST:
			audio_sound_loop_start(curr_bgm, 14.117);
			audio_sound_loop_end(curr_bgm, 63.529);
			break;
		case REALM.TREACHERY:
			audio_sound_loop_start(curr_bgm, 9.6);
			audio_sound_loop_end(curr_bgm, 86.4);
			break;
		case REALM.MAINMENU:
			audio_sound_loop_start(curr_bgm, 14.117);
			audio_sound_loop_end(curr_bgm, 63.529);
			break;
		default:
			break;
	}
	
	last_realm = curr_realm;
}


if(ds_map_exists(room_map, room))
{
	var _data = ds_map_find_value(room_map, room)
	instance_destroy(obj_collectible_parent);
	instance_destroy(obj_gate);
	instance_destroy(obj_weighted_gate);
	instance_destroy(obj_interactible);
	
	if(boss_defeated >= curr_realm)
	{
		if(instance_exists(obj_boss_enemy))
			instace_destroy(obj_boss_enemy);
	}
	
	var _coll_list = _data.collectibles;
	var _enemy_list = _data.enemies;
	var _obstacle_list = _data.obstacles;
	var _interactible_list = _data.interactible;
	
	
	for(var i = 0; i < max(ds_list_size(_enemy_list), ds_list_size(_coll_list), ds_list_size(_obstacle_list), ds_list_size(_interactible_list)); i++)
	{
		var _struct_coll = noone;
		var _struct_enemy = noone;
		var _struct_obs = noone;
		var _struct_int = noone;
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
		if(ds_list_size(_interactible_list) > i)
		{
			_struct_int = ds_list_find_value(_interactible_list, i);
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
			_inst.room_index = _struct_obs.room_index;
			_inst.axis = _struct_obs.axis;
			if(_struct_int.object == "obj_weighted_gate") _inst.org = _struct_obs.org;
			if(_struct_obs.object == "obj_gate") 
			{
				_inst.active = _struct_obs.active;
			}
		}	
		
		if(_struct_int)
		{
			_inst = instance_create_layer(_struct_int.x, _struct_int.y, "Instances", asset_get_index(_struct_int.object));
			_inst.image_xscale = _struct_int.x_scale;
			_inst.image_yscale = _struct_int.y_scale;
			_inst.image_index = _struct_int.image_index;
			_inst.image_speed = _struct_int.image_speed;
			_inst.sprite_index = _struct_int.sprite_index;
			_inst.image_angle = _struct_int.image_angle;
			_inst.activated = _struct_int.activated;
			_inst.tied_room_index = _struct_int.tied_room_index;
			_inst.priority = _struct_int.priority;
			if(_struct_int.object == "obj_environment_trigger") _inst.event_id = _struct_int.event_id;
			if(object_get_parent(_inst.object_index) == obj_interactible_char)
			{
				_inst.initial_dialogue = _struct_int.initial_d;
				_inst.repeat_dialogue = _struct_int.repeat_d;
			}
		}
	}
}

// Reattach interactibles to associated objects
with(obj_interactible)
{
	event_user(1);	
}

// Initialize Obstacle Speeds
with(obj_obstacle)
{
	event_user(2);	
}