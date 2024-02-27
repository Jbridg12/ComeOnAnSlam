// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_animation(weapon_id)
{

	switch(weapon_id)
	{
		case 0:
			return SwingUP;
		case 1:
			return SwingDown;
		default:
			return SwingUP;
	}
}