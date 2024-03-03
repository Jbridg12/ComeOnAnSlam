/// @description Insert description here
// You can write your code in this editor

if(activated)
{
	image_speed = 0.2;	
}
else
{
	image_speed = -0.2;
}

if(image_speed > 0 && floor(image_index) == (image_number - 1))
{
	image_speed = 0;
}
else if(image_speed < 0 && floor(image_index) == 0)
{
	image_speed = 0;	
}


if(tied_object != noone)
{
	if(tied_object.move != activated)
	{
		tied_object.move_speed *= -1;
		tied_object.move = activated;
	}
}	

