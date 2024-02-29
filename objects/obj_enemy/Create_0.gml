/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

// Object Parameters
invulnerable = false;
invulnerable_timer_max = 30;
invulnerable_timer = 0;
path_distance = 0;
knockback_force = 0;
knockback_angle = 0;
hit_list = ds_list_create();

// Instantiation

if(!absolute_path)
{
	targ_x = x;
	targ_y = y;
}
else
{
	targ_x = path_get_x(follow_path, 0);
	targ_y = path_get_y(follow_path, 0);
}

if(follow_path != noone)
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
else
{
	
	in_path = false;
}
