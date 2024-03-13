/// @description Insert description here
// You can write your code in this editor

if(destination_x != -1)
{
	delta_x = sign(destination_x - x) * 3;
	
	calculate_movement();
	
	if(delta_x != 0)
	{
		orient_x = sign(delta_x);	
	}
}

if(x = destination_x)
{
	var _index = index;
	with(obj_obstacle)
	{
		if(room_index == _index)
		{
			event_user(1);
		}
	}
	
	instance_destroy();
}