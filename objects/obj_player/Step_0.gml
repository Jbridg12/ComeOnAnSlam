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

// Invulnerability Cooldown
if(hit_timer-- > 0)
{
	if(hit_timer > 45) delta_x += knockback_force;
	if(hit_timer = 0) invulnerable = noone;
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

if(ammo_countdown > 0)
{
	ammo_countdown--;	
}
else
{
	current_ammo = max_ammo;
	ammo_countdown = 300;
}


if(hazard_cooldown > 0) hazard_cooldown--;