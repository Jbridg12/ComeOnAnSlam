/// @description Barrage Delay
// You can write your code in this editor
if(++barrage < 15)
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_heart);
	var _angle = point_direction(target_x, target_y, x, y)


	var _degree =  barrage % 10;
	if(_degree < 5)
	{
		_inst.image_angle = _angle + 160 + (10 * _degree);
		_inst.fire_angle = _angle + 160 + (10 * _degree);
	}
	else
	{
		_inst.image_angle = _angle + 200 - (10 * (_degree % 5));
		_inst.fire_angle = _angle + 200 - (10 * (_degree % 5));
	}
	alarm[1] = 5;
}