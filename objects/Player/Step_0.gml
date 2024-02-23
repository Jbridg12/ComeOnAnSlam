/// @description Player processes on every update tick of the game.
// You can write your code in this editor


if(obj_game_manager.in_pause) return;


CheckAnimation();
if(in_animation) return;

if(dropdown_timer >= 0)
{
	if (--dropdown_timer <= 0)
		platform_transparent = false;
}

handle_input()

// Update position by speed

if(delta_x != 0) orientation = sign(delta_x);

calculate_movement();

// Vine Cooldown
if(vine_cooldown > 0)
{
	vine_cooldown--;
	if(vine_cooldown = 0) attached_vine = noone;
}