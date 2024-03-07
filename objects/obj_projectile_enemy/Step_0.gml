/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

var _inst = collision_circle(x, y, detection_radius, obj_player, 0, 1)
if(_inst != noone)
{
	if(obj_game_manager.in_dialogue) return;
	
	
}
else(_inst = collision_circle(x, y, detection_radius, obj_player, 0, 1) != noone)
{
	_inst = collision_circle(x, y, detection_radius, obj_player, 0, 1);
	if(_inst != noone)
		target = _inst;

}


// Process Hit Bounceback
if(invulnerable_timer > 0)
{
	if(invulnerable_timer >= (invulnerable_timer_max - 5)) 
	{
		var _knockback_x = knockback_force * dcos(knockback_angle);
		var _knockback_y = knockback_force * dsin(knockback_angle) * 0.5;
		delta_x += _knockback_x;
		delta_y -= _knockback_y;
	}
}