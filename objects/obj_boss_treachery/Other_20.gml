/// @description Fire Circle
// You can write your code in this editor

for( var i = 0; i < 15; i++)
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_heart);
	_inst.sprite_index = sAidanProj;
	_inst.image_angle = i * 24;
	_inst.fire_angle = i * 24;
	
	
}

if((hp/max_health) <= 0.5)
{
	alarm[1] = 10;	
}

fired = true;