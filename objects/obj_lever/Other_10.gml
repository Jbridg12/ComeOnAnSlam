/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(tied_object != noone)
{
	with(tied_object)
	{

		if(extended)
		{
			event_user(0);
		}
		else
		{
			event_user(1);	
		}
	}
}
