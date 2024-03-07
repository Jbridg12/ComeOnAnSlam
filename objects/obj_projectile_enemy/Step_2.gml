/// @description Insert description here
// You can write your code in this editor

calculate_movement();

// Inherit the parent event
event_inherited();

if(target != noone)
{
	var _angle = point_direction(target.x, target.y, x, y);
	orient_x = sign(dcos(_angle));
	
	// Trigger Projectile Behaviour
	event_user(3);
}

