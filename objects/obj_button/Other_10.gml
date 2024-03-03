/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if(tied_object != noone)
{
	activated = true;
	image_speed	= 0.2;
	with(tied_object)
	{

		if(active)
		{
			event_user(0);
		}
	}
}
