/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor


if(point_in_circle(Player.x, Player.y, x, y, detection_radius))
{
	if(obj_game_manager.in_dialogue) return;
	
	if(in_path) 
	{
		path_end();
		in_path = false;	
	}
	
	motion_set(point_direction(x, y, Player.x, Player.y), move_speed); 
}
else
{
	if(!in_path)
	{
		if(abs(targ_x-x) >= 2 ||abs(targ_y-y) >= 2)
		{
			
			//move_towards_point(targ_x, targ_y, move_speed);
			var dir = degtorad(point_direction(x, y, targ_x, targ_y));
			delta_x = cos(-dir) * 2;
			
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
		show_debug_message(in_path);
	}
}