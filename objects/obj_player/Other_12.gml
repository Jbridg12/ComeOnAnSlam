/// @description Primary Attack
// You can write your code in this editor


// Check Weapon 
//var attack_sequence = attack_animation(weapon_id)
//StartAnimation(attack_sequence);
var left = x - ((sprite_get_width(sprite_index)/2) * orientation); 
var right = x + ((sprite_get_width(sprite_index)/2) * orientation);
var top = y - (sprite_get_height(sprite_index)/2);
var bottom = y + (sprite_get_height(sprite_index)/2);

if(active_hitbox)
{
	instance_destroy(active_hitbox);
	active_hitbox = noone;
}

if(!grounded && keyboard_check(ord("S")))
{
	sprite_index = TestAttackDown;
	active_hitbox = instance_create_layer(left, bottom, instance_layer, attack_hitbox);
}
else
{
	sprite_index = TestAttackRight;
	active_hitbox = instance_create_layer(right, top, instance_layer, attack_hitbox);
	
}

active_hitbox.image_xscale = orientation;
attacking_enable_collision = true;
image_speed = 0.2;
alarm[0] = 25;