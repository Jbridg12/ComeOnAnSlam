/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Check for pathing and entity movement 
if(point_in_circle(obj_player.x, obj_player.y, x, y, detection_radius))
{
	if(obj_game_manager.in_dialogue) return;
	
	if(in_path) 
	{
		path_end();
		in_path = false;	
	}
	
	
	var _dir = degtorad(point_direction(x, y, obj_player.x, obj_player.y));
	delta_x = sign(cos(_dir)) * move_speed;
	delta_y = sign(sin(_dir)) * move_speed;
	
	// Process Hit Bounceback
	if(invulnerable_timer > 0)
	{
		if(invulnerable_timer >= (invulnerable_timer_max - 5)) 
		{
			var _knockback_x = knockback_force * dcos(knockback_angle);
			var _knockback_y = knockback_force * dsin(knockback_angle) * 0.5;
			delta_x += _knockback_x;
			delta_y -= _knockback_y;
		}
	}
}
else
{
	motion_set(0,0);
	
	if(!in_path)
	{
		if(abs(targ_x-x) >= 2 ||abs(targ_y-y) >= 2)
		{
			
			//move_towards_point(targ_x, targ_y, move_speed);
			var _dir = degtorad(point_direction(x, y, targ_x, targ_y));
			delta_x = cos(_dir) * 2;
			delta_y = sin(_dir) * 2;
			calculate_movement();
			show_debug_message(delta_y);
		}
		else
		{
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