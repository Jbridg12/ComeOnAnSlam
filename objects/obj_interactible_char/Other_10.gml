/// @description Insert description here
// You can write your code in this editor

if(!activated)
{
	instance_create_layer(x, y, layer_get_id("Instances"), initial_dialogue);
	activated = true;
}
else
{
	instance_create_layer(x, y, layer_get_id("Instances"), repeat_dialogue);	
}