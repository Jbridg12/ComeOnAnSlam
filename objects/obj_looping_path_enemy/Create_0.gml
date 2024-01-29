/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

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


path_start(follow_path, move_speed, path_action_continue, absolute_path);
in_path = true;