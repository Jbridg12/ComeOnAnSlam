/// @description Unpause Event
// You can write your code in this editor



delta_x = saved_Hspeed;
delta_y = saved_Vspeed;



if(in_path)
{
	if(!absolute_path)
	{
		x = targ_x;
		y = targ_y;
	}
	
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
	
	path_position = path_distance;
}

if(point_in_circle(obj_player.x, obj_player.y, x, y, detection_radius))
{
	if(in_path) 
	{
		path_end();
		in_path = false;	
	}
	motion_set(point_direction(x, y, obj_player.x, obj_player.y), move_speed); 
}