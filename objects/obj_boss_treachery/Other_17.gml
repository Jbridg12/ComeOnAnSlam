/// @description Crash Slam
// You can write your code in this editor


if(instance_exists(obj_rock_small))
{
	in_slam = false;
	attack_cooldown = ((hp/max_health) < 0.5) ? 120 : 180;
	in_attack = false;
	return;
}

if(instance_exists(obj_rock_medium))
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_rock_small);
	_inst.image_angle = 0;
	_inst.fire_angle = 0;
	
	_inst = instance_create_layer(x, y, instance_layer, obj_rock_small);
	_inst.image_angle = 180;
	_inst.fire_angle = 180;
	return;
}

if(instance_exists(obj_rock_large))
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_rock_medium);
	_inst.image_angle = 0;
	_inst.fire_angle = 0;
	
	_inst = instance_create_layer(x, y, instance_layer, obj_rock_medium);
	_inst.image_angle = 180;
	_inst.fire_angle = 180;
	return;
}

var _inst = instance_create_layer(x, y, instance_layer, obj_rock_large);
_inst.image_angle = 0;
_inst.fire_angle = 0;
	
_inst = instance_create_layer(x, y, instance_layer, obj_rock_large);
_inst.image_angle = 180;
_inst.fire_angle = 180;
in_slam = true;