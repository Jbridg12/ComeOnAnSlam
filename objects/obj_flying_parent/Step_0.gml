/// @description Insert description here
// You can write your code in this editor



var _inst = collision_circle(x, y, detection_radius, obj_dummy, 0, 1)
if(_inst != noone)
{
	if(obj_game_manager.in_dialogue) return;
	
	if(in_path) 
	{
		path_end();
		in_path = false;	
	}
		
	var _dir = degtorad(point_direction(_inst.x, _inst.y, x, y));
	delta_x = sign(cos(_dir)) * move_speed;
	delta_y = sign(sin(_dir)) * move_speed;
	
}
else
{
	_inst = collision_circle(x, y, detection_radius, obj_player, 0, 1);
	if(_inst != noone)
	{
		if(in_path) 
		{
			path_end();
			in_path = false;	
		}
		
		var _dir = degtorad(point_direction(_inst.x, _inst.y, x, y));
		delta_x = sign(cos(_dir)) * -move_speed;
		delta_y = sign(sin(_dir)) * move_speed;
	}
	else
	{
		if(follow_path != noone)
		{
			if(!in_path)
			{
	
				if(abs(targ_x-x) >= 2 || abs(targ_y-y) >= 2)
				{
			
					var _dir = degtorad(point_direction(targ_x, targ_y, x, y));
					delta_x = sign(cos(_dir)) * -move_speed;
					delta_y = sign(sin(_dir)) * move_speed;
					//calculate_movement();
				}
				else
				{
					delta_x = 0;
					delta_y = 0;
					switch(path_action)
					{
						case "loop":
							path_start(follow_path, move_speed, path_action_continue, absolute_path);
							break;
						case "reverse":
							path_start(follow_path, move_speed, path_action_reverse, absolute_path);
							break;
						default:
							path_start(follow_path, move_speed, path_action_continue, absolute_path);
							break;
					}
			
					in_path = true;
				}
			}
		}
	}
}

// Inherit the parent event
event_inherited();

