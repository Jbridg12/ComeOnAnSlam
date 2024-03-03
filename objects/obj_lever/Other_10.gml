/// @description Trigger Object
// You can write your code in this editor

// Inherit the parent event
event_inherited();

activated = !activated;
image_index = activated ? 1 : 0;

if(tied_object != noone)
{
	with(tied_object)
	{

		if(active)
		{
			event_user(0);
		}
		else
		{
			event_user(1);	
		}
	}
}
