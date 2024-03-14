/// @description Crash Slam
// You can write your code in this editor


var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_homingheart);
var _angle = point_direction(target_x, target_y, x, y)
_inst.image_angle = _angle + 180;
_inst.fire_angle = _angle + 180;
_inst.target =  obj_player;