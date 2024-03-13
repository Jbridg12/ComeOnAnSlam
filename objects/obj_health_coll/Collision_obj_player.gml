/// @description Insert description here
// You can write your code in this editor



with(obj_player)
{
	max_health += 50;
	hp = max_health;

}
instance_create_layer(0, 0, "Instances", obj_dialogue_health);

// Inherit the parent event
event_inherited();