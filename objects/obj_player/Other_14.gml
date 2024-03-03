/// @description Throw Ranged
// You can write your code in this editor



var _inst = instance_create_layer(x, y, instance_layer, obj_stapler);
_inst.image_angle = (-ranged_angle - 180) % 360;
_inst.fire_angle =(-ranged_angle - 180) % 360;

current_ammo = 0;
ammo_countdown = 600;

