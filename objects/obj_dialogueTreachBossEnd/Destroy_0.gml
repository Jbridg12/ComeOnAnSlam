/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


with(obj_boss_enemy)
{
	instance_destroy();	
}

with(obj_boss_trigger_treachery)
{
	event_user(1);	
}

room_goto(MainMenu);