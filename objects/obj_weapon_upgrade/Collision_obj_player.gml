/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

with(obj_player)
{
	weapon_id = clamp(weapon_id + 1, 0, 4);

	// Then play animation (TEMP ANIMATION)
	var attack_sequence = attack_animation(weapon_id)
	StartAnimation(attack_sequence);
}
