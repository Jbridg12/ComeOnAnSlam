/// @description Toggle Pause
// You can write your code in this editor

if(in_pause)
{
	in_pause = false;
	
	instance_destroy(obj_pause);
	with(obj_pausable_object)
	{
		event_user(1);	
	}
}
else
{
	in_pause = true;
	
	instance_create_layer(0, 0, "Instances", obj_pause);
	with(obj_pausable_object)
	{
		event_user(0);	
	}
}


