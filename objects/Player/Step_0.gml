/// @description Player processes on every update tick of the game.
// You can write your code in this editor


if(obj_game_manager.in_pause) return;


CheckAnimation();
if(in_animation) return;

handle_input()

// Update position by speed

if(delta_x != 0) orientation = sign(delta_x);

if(!frozen) calculate_movement();

// Vine Cooldown
if(vine_cooldown > 0)
{
	vine_cooldown--;
	if(vine_cooldown = 0) attached_vine = noone;
}