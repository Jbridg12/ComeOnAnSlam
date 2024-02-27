/// @description Insert description here
// You can write your code in this editor


if(!in_settings) 
{
	instance_create_layer(0, 0, "Instances", obj_pause);
	with(obj_button_parent)
	{
		in_settings = true;
	}
}
