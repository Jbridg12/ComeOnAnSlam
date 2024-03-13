/// @description Insert description here
// You can write your code in this editor


if(projectile_cooldown <= 0)
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_bin);
	var _angle = point_direction(target.x, target.y, x, y)
	_inst.image_angle = _angle + 180;
	_inst.fire_angle = _angle + 180;
	
	projectile_cooldown = 220;
}