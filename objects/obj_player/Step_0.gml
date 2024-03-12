/// @description Player Step.
// You can write your code in this editor

if(obj_game_manager.in_pause) return;


CheckAnimation();
if(in_animation) return;



if(!in_ranged)
{
	if(delta_x != 0) orientation = sign(delta_x);
}
else
{
	if(sign(ranged_angle - 90) != 0)
		orientation = sign(ranged_angle - 90);	
}


// Update Last Safe Position
if(grounded && !hanging && safety_timer-- < 0)
{
	safe_x = x;
	safe_y = y;
	safety_timer = 20;
}

// Vine Cooldown
if(vine_cooldown > 0)
{
	vine_cooldown--;
	if(vine_cooldown = 0) attached_vine = noone;
}

if(ammo_countdown > 0)
{
	ammo_countdown--;	
}
else
{
	current_ammo = max_ammo;
	ammo_countdown = 300;
}

if(step_cooldown > 0)	step_cooldown--;
if(staple_cooldown > 0) staple_cooldown--;
if(hazard_cooldown > 0) hazard_cooldown--;
if(hit_timer > 0)		hit_timer--;
	
if(!obj_game_manager.in_dialogue) 
{
	handle_input();
}
else
{
	delta_x = 0;
	if(animation_destination != -1)
	{
		if(abs(animation_destination - x) > tolerance)
		{
			delta_x = sign(animation_destination - x) * walk_speed;
		}
	}
}

// Invulnerability Cooldown
if(hit_timer-- > 0)
{
	if(hit_timer > 50) 
	{
		if(!grounded)
		{
			delta_x = knockback_force_x;
		}
		else
		{
			delta_x += knockback_force_x;
		}
		// Check to make sure compunding velocities don't cause leaps
		if(sign(contact_dy) == sign(knockback_force_y))
		{
			delta_y += knockback_force_y  * 0.1;
		}
		else
		{
			delta_y = knockback_force_y;
		}
	}
	if(hit_timer = 0) 
	{
		contact_dy = 0;
		invulnerable = noone;
	}
}

// Update position by speed
if(!frozen) calculate_movement();

if (sprite_index == sPlayer || sprite_index == sPlayerWalk)
{
	if(delta_x != 0)
	{
		if(!on_vine  && grounded )
		{
			sprite_index = 	sPlayerWalk;
		}
		else
		{
			sprite_index = sPlayer;	
		}
	}
	else
	{
		sprite_index = sPlayer;
	}
	
}

