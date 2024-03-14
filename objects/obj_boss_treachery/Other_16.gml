/// @description Center Circles
// You can write your code in this editor


if(in_circle_attack)
{
	if(fired)
	{
		if(dest_index == 1)
		{
			in_circle_attack = false;
			dest_index = -1;
			attack_cooldown = ((hp/max_health) < 0.5) ? 120 : 180;
			in_attack = false;
			fired = false;
		}
		else
		{
			dest_index = 1;
		}
	}
	else
	{
		// fire bullets	
		event_user(10);
	}
}
else
{
	in_circle_attack = true;	
	dest_index = 0;
}