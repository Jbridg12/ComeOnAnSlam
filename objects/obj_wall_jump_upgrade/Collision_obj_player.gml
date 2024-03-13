/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

with(obj_player)
{
	wall_jump_enabled = true;	
}
instance_create_layer(0, 0, "Instances", obj_dialogue_walljump);