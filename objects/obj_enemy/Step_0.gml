/// @description Insert description here
// You can write your code in this editor

if(obj_game_manager.in_pause) return;

if(hp <= 0) 
{
	event_user(2);
}

if(invulnerable_timer-- == 0)
{
	ds_list_clear(hit_list);	
	knockback_angle = 0;
	knockback_force = 0;
}

// Check for pathing and entity movement 
// Process Hit Bounceback
if(invulnerable_timer > 0)
{
	if(invulnerable_timer >= (invulnerable_timer_max - 5)) 
	{
		var _knockback_x = knockback_force * dcos(knockback_angle) * 0.2;
		var _knockback_y = knockback_force * dsin(knockback_angle) * 0.5;
		delta_x += _knockback_x;
		delta_y -= _knockback_y;
	}
}


calculate_movement();