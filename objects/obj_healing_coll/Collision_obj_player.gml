/// @description Insert description here
// You can write your code in this editor




with(obj_player)
{
	hp = min(hp + 50, max_health);
}

instance_destroy(self);