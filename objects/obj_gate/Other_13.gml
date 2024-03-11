/// @description Insert description here
// You can write your code in this editor

if(move)
{
	move = false;
	if(axis == "Y")
	{
		y = org + (s_height * sign(move_speed));
	}
	else
	{
		x =  org - (s_height * sign(move_speed));	
	}
	active = !active;
	distance_travelled = 0;
}