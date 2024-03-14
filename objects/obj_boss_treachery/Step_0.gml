/// @description Insert description here
// You can write your code in this editor

if(obj_game_manager.in_pause) return;

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
	if(instance_exists(obj_dummy))
	{
		target_x = obj_dummy.x;
		target_y = obj_dummy.y;
	}
	else
	{
		target_x = obj_player.x;
		target_y = obj_player.y;
	}
	
	if(--attack_cooldown <= 0 && !in_attack)
	{
		delta_x = 0;
		event_user(3);
	}
	
	if(in_dash)
	{
		var _dash_x = 0;
		var _dash_index = dash_index;
		with(obj_dash_target)
		{
			if(index == _dash_index)
			{
				_dash_x = x;
			}
		}
		
		if(abs(x - _dash_x) <= tolerance && !alarmed)
		{
			alarm[0] = 15;			
			alarmed = true;
			return;
		}
		
		if(_dash_x != 0)
			target_x = _dash_x
		
		delta_x = sign(target_x - x) * dash_speed;
	}
	
	if(in_circle_attack)
	{
		var _dest_x = 0;
		var _dest_y = 0;
		var _dest_index = dest_index;
		with(obj_circle_target)
		{
			if(index == _dest_index)
			{
				_dest_x = x;
				_dest_y = y;
			}
		}
		
		if(abs(x - _dest_x) <= tolerance && abs(y - _dest_y) <= tolerance && !alarmed)
		{
			alarm[0] = 30;
			alarmed = true;
			return;
		}
		

		target_x = _dest_x
		target_y = _dest_y
		
		delta_x = sign(target_x - x) * float_speed;
		delta_y = sign(target_y - y) * float_speed;
	}
	if(in_slam)
	{
		if(!alarmed)
		{
			alarm[0] = 30;
			alarmed = true;
			return;
		}
	}
	
}

calculate_movement();