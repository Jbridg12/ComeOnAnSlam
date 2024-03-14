/// @description Insert description here
// You can write your code in this editor

if(other.invulnerable)
{
	screenshake(5, 1, 0.4);

	other.hp -= damage;
	other.invulnerable_timer = other.invulnerable_timer_max;
}

instance_destroy();