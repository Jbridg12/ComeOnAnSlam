/// @description Insert description here
// You can write your code in this editor

if(in_pause)
{
	in_pause = false;
	
	with(obj_pausable_object)
	{
		event_user(1);	
	}
}
else
{
	in_pause = true;
	
	with(obj_pausable_object)
	{
		event_user(0);	
	}
}
	

