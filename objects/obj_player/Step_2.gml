/// @description Insert description here
// You can write your code in this editor

var _dx = x_previous - x;

if(grounded && !hanging && _dx != 0)
{
	if(step_cooldown <= 0)
	{
		var _sfx = second_step ? sndStep_1 : sndStep_2;
		second_step = !second_step;
		audio_play_sound(_sfx, 0, false);
		step_cooldown = 20;
	}
}

x_previous = x;