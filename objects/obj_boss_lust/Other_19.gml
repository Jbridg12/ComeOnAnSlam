/// @description Raise Spikes
// You can write your code in this editor

if(!spikes_active)
{
	with(obj_heart_spikes)
	{
		move = 1;
	}

	alarm[0] = 300;
	spikes_active = true;
}