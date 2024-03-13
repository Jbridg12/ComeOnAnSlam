/// @description Insert description here
// You can write your code in this editor

if(move != 0)
{
	if(distance_travelled == height)
	{
		move = 0;
		distance_travelled = 0;
	}
	
	delta_y = height / 60;
	distance_travelled += delta_y;
	y -= delta_y * move;
}