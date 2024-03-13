/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

with(obj_player)
{
	weapon_id = clamp(weapon_id + 1, 0, 4);
}

instance_create_layer(0, 0, "Instances", obj_dialogue_weapon);