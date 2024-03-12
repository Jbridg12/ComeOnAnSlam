/// @description Ranged Barrage
// You can write your code in this editor


var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_heart);
var _angle = point_direction(target_x, target_y, x, y)
_inst.image_angle = _angle + 160;
_inst.fire_angle = _angle + 160;
barrage = 0;

alarm[1] = 5;