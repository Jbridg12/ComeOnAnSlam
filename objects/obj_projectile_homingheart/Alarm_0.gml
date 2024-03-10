/// @description Insert description here
// You can write your code in this editor

var _damage = damage;
var _inst_player = collision_circle(x, y, 100, obj_player, 0, 1);
var _inst_dummy = collision_circle(x, y, 100, obj_dummy, 0, 1);

if(_inst_player != noone)
{
	with(_inst_player)
	{
		if(!invulnerable)
		{
			hp -= _damage;
			screenshake(5, 2, 0.5);
			invulnerable = true;
			hit_timer = 60;
	
		}
	}
}

if(_inst_dummy != noone)
{
	with(_inst_dummy)
	{
		if(!invulnerable)
		{
			instance_destroy();
		}
	}
}

// Inherit the parent event
event_inherited();

