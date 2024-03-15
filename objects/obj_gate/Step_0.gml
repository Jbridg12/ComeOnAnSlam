/// @description Insert description here
// You can write your code in this editor



if(move)
{
	if(distance_travelled == s_height)
	{
		move = false;
		distance_travelled = 0;
		obj_player.frozen = false;
		return;
	}
	
	if(axis == "Y")
	{
		y += move_speed;
	}
	else
	{
		x -= move_speed;	
	}
	distance_travelled += abs(move_speed);
	
}

