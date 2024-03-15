/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


with(obj_boss_enemy)
{
	instance_destroy();	
}

instance_create_layer(0, 0, "Instances", obj_credits);
//room_goto(MainMenu);