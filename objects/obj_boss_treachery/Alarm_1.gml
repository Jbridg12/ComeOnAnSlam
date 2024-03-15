/// @description Barrage Delay
// You can write your code in this editor

for( var i = 0; i < 15; i++)
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_heart);
	_inst.sprite_index = sAidanProj;
	_inst.image_angle = i * 24 + 12;
	_inst.fire_angle = i * 24 + 12;
}