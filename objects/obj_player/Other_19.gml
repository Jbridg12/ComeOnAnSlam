/// @description Spawn Dummy
// You can write your code in this editor

if(grounded && dummy_enabled)
{
	with(obj_dummy) instance_destroy();

	instance_create_layer(x, y, instance_layer, obj_dummy);
}
