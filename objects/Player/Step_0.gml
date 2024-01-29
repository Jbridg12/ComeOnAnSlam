/// @description Player processes on every update tick of the game.
// You can write your code in this editor


if(dropdown_timer >= 0)
{
	if (--dropdown_timer <= 0)
		platform_transparent = false;
}

movement_input()

// Update position by speed

if(delta_x != 0) orientation = sign(delta_x);

delta_y += 1;

calculate_movement();