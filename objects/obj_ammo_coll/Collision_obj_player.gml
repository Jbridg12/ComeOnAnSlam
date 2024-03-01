/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with(obj_player)
{
	current_ammo = clamp(current_ammo + 1, 0, max_ammo);

	// Then play animation (TEMP ANIMATION)
	var attack_sequence = attack_animation(weapon_id)
	StartAnimation(attack_sequence);
}
