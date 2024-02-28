/// @description Secondary Attack


show_debug_message("Shoot Bolt");
var right = x + ((sprite_get_width(sprite_index)/2) * orientation);

var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_player);
_inst.fire_angle = -ranged_angle - 180;