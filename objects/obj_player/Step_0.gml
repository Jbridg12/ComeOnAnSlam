/// @description Player Step.
// You can write your code in this editor

if(obj_game_manager.in_pause) return;


CheckAnimation();
if(in_animation) return;

handle_input();

if(!in_ranged)
{
	if(delta_x != 0) orientation = sign(delta_x);
}
else
{
	orientation = sign(ranged_angle - 90);	
}


// Update position by speed
if(!frozen) calculate_movement();

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

// Invulnerability Cooldown
if(hit_timer > 0)
{
	hit_timer--;
	if(hit_timer = 0) invulnerable = noone;
}


if(hazard_cooldown > 0) hazard_cooldown--;