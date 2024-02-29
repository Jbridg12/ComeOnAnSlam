/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();


if(point_in_circle(obj_player.x, obj_player.y, x, y, detection_radius))
{
	if(obj_game_manager.in_dialogue) return;
	
	if(in_path) 
	{
		path_end();
		in_path = false;	
	}
	
	
	var dir = degtorad(point_direction(x, 0, obj_player.x, 0));
	delta_x = sign(cos(-dir)) * move_speed;
	
	// Process Hit Bounceback
	if(hit_timer > 0)
	{
		if(hit_timer >= 10) 
		{
			var _knockback_x = knockback_force * dcos(knockback_angle);
			var _knockback_y = knockback_force * dsin(knockback_angle) * 0.5;
			delta_x += _knockback_x;
			delta_y -= _knockback_y;
		}
		
		hit_timer--;
		
		if(hit_timer == 0) 
		{
			knockback_angle = 0;
			knockback_force = 0;
		}
	}
	
	// Implement AI jump in future
	calculate_movement();
}
else
{
	if(follow_path != noone)
	{
		if(!in_path)
		{
			if(abs(targ_x-x) >= 2)
			{
			
				//move_towards_point(targ_x, targ_y, move_speed);
				var dir = degtorad(point_direction(x, 0, targ_x, 0));
				delta_x = sign(cos(-dir)) * move_speed;
			
				// Implement AI jump in future
				delta_y = 0;
				calculate_movement();
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
}