/// @description Insert description here
// You can write your code in this editor



if(move)
{
	
	if(distance_travelled == s_height)
	{
		extended = !extended;
		move = false;
		distance_travelled = 0;
		obj_player.frozen = false;
		return;
	}
	
	var delta_y = move_speed
	if(extended = true)
	{
		delta_y *= -1;		
	}
	
	y += delta_y;
	distance_travelled += abs(delta_y);
	
}

