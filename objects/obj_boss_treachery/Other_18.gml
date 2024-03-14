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
		attack_cooldown = ((hp/max_health) < 0.5) ? 180 : 240;
		in_attack = false;
	}
}
else
{
	in_dash = true;	
	dash_index = 0;
}