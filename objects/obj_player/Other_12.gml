/// @description Primary Attack
// You can write your code in this editor


// Check Weapon 
//var attack_sequence = attack_animation(weapon_id)
//StartAnimation(attack_sequence);
var _left = x - ((sprite_get_width(sprite_index)/2) * orientation); 
var _right = x + ((sprite_get_width(sprite_index)/2) * orientation);
var _top = y - (sprite_get_height(sprite_index)/2);
var _bottom = y + (sprite_get_height(sprite_index)/2);

if(active_hitbox)
{
	instance_destroy(active_hitbox);
	active_hitbox = noone;
}

if(!grounded && (keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) < 0))
{
	sprite_index = TestAttackDown;
	active_hitbox = instance_create_layer(x, y, instance_layer, obj_down_attack);
	active_hitbox.y = _bottom  + (obj_down_attack.sprite_height/2) - 8;
}
else
{
	sprite_index = TestAttackRight;
	active_hitbox = instance_create_layer(_right, y, instance_layer, obj_side_attack);
	active_hitbox.y = _top  + (obj_side_attack.sprite_height/2);
}

active_hitbox.image_xscale = orientation;
attacking_enable_collision = true;
image_speed = 0.2;
alarm[0] = 25;