/// @description Primary Attack
// You can write your code in this editor


// Check Weapon 
//var attack_sequence = attack_animation(weapon_id)
//StartAnimation(attack_sequence);
var _left = x - ((sprite_get_width(sprite_index)/2) * orientation); 
var _right = x + ((sprite_get_width(sprite_index)/2) * orientation);
var _top = y - (sprite_get_height(sprite_index)/2);
var _bottom = y + (sprite_get_height(sprite_index)/2);

// Trigger SFX
audio_play_sound(sndAttack, 0, false);

if(active_hitbox)
{
	instance_destroy(active_hitbox);
	active_hitbox = noone;
}

if(!grounded && (keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0))
{
	if(sprite_index != sPlayerDownAttack)
	{
		sprite_index = sPlayerDownAttack;
		image_index = 0;
	}
	active_hitbox = instance_create_layer(x, y, instance_layer, obj_down_attack);
	active_hitbox.y = _bottom  + (obj_down_attack.sprite_height/2) - 8;
}
else
{
	if(sprite_index != sPlayerAttack)
	{
		sprite_index = sPlayerAttack;
		image_index = 0;
	}
	active_hitbox = instance_create_layer(_right, y, instance_layer, obj_side_attack);
	active_hitbox.y = _top  + (obj_side_attack.sprite_height/2);
}

active_hitbox.image_xscale = orientation;
attacking_enable_collision = true;
image_speed = 1;
alarm[1] = 15;