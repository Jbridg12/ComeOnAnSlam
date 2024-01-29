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
	
	var dir = degtorad(point_direction(x, 0, Player.x, 0));
	delta_x = sign(cos(-dir)) * move_speed;
	
	// Implement AI jump in future
	calculate_movement();
}
else
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