/// @description Insert description here
// You can write your code in this editor

with(obj_boss_enemy)
{
	instance_destroy();	
}

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


with(obj_boss_trigger)
{
	event_user(1);	
}