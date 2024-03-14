/// @description Dash Cross Screen
// You can write your code in this editor

if(in_dash)
{
	if(dash_index == 0)
	{
		dash_index = 1;	
	}
	else
	{
		dash_index = -1;
		in_dash = false;
		attack_cooldown = ((hp/max_health) < 0.5) ? 120 : 180;
		in_attack = false;
		invulnerable = false;
		collidable = false;
	}
}
else
{
	in_dash = true;
	invulnerable = true;
	dash_index = 0;
	collidable = true;
}