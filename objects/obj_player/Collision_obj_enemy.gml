/// @description Insert description here
// You can write your code in this editor

if(!invulnerable)
{
	hp -= 20;
	screenshake(5, 2, 0.5);
	invulnerable = true;
	hit_timer = 60;
	
	knockback_force = -6 * dcos(point_direction(obj_player.x, 0, other.x, 0));
}