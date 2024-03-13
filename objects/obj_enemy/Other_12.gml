/// @description Death Event
// You can write your code in this editor


if(choose(0,1) == 1 && !instance_exists(obj_boss_enemy))
{
	var _inst = instance_create_layer(x, y, "Instances", obj_healing_coll);	
	_inst.alarm[0] = 300;
	_inst.image_xscale = 0.5;
	_inst.image_yscale = 0.5;
}

instance_destroy(self);

