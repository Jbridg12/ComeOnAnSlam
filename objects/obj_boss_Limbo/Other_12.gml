/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with(obj_flying_limbo_boss_minion)
{
	instance_destroy();	
}
with(obj_limbo_proj_boss_minion)
{
	instance_destroy();	
}

with(obj_walking_limbo_boss_minion)
{
	instance_destroy();	
}

instance_create_layer(0, 0, "Instances", obj_dialogueLimboBossEnd);

obj_player.hp = obj_player.max_health;