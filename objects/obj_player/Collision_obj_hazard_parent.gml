/// @description Insert description here
// You can write your code in this editor

if(hazard_cooldown == 0)
{
	hp -= 10;
	screenshake(5, 3, 0.5);

	x = safe_x;
	y = safe_y;
	delta_x = 0;
	delta_y = 0;

	hazard_cooldown = 30;
}
