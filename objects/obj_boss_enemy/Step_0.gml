/// @description Insert description here
// You can write your code in this editor

if(obj_game_manager.in_pause) return;
if(obj_game_manager.in_dialogue) return;
if(active)
{
	if(hp <= 0) 
	{
		event_user(2);
	}

	if(--invulnerable_timer == 0)
	{
		ds_list_clear(hit_list);	
	}

	var _inst_close = noone;
	var _inst_medium = noone;
	if(instance_exists(obj_dummy))
	{
		target_x = obj_dummy.x;
		target_y = obj_dummy.y;
		_inst_close = collision_circle(x, y, close_range, obj_dummy, 0, 1);
		_inst_medium = collision_circle(x, y, medium_range, obj_dummy, 0, 1);
	}
	else
	{
		target_x = obj_player.x;
		target_y = obj_player.y;
		_inst_close = collision_circle(x, y, close_range, obj_player, 0, 1);
		_inst_medium = collision_circle(x, y, medium_range, obj_player, 0, 1);
	}

	if(--attack_cooldown <= 0)
	{

		if(_inst_close != noone)
		{
			event_user(3);
		}
		else if(_inst_medium != noone)
		{
			event_user(4);
		}
		else
		{
			event_user(5);
		}
	
	}
}