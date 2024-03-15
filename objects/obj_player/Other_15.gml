/// @description Charge Attack
// You can write your code in this editor

show_debug_message("Charged!");

//var _right = x + ((sprite_get_width(sprite_index)/2) * orientation);
var _top = y - (sprite_get_height(sprite_index)/2);

sprite_index = sPlayerAttack;
active_hitbox = instance_create_layer(x, y, instance_layer, obj_charge_attack);
//active_hitbox.x += (obj_charge_attack.sprite_width/2) * orientation;
active_hitbox.y = _top  + (obj_charge_attack.sprite_height/2);


active_hitbox.image_xscale = orientation;
attacking_enable_collision = true;
image_speed = 1;
alarm[1] = 20;

