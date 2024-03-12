/// @description Long
// You can write your code in this editor

var _event = 6;

if((hp/max_health) < 0.5)
{
	_event = spikes_active ? choose(6, 7) : choose(6, 7, 9);
}
else
{
	_event = choose(6, 7);
}

attack_cooldown = ((hp/max_health) < 0.5) ? 180 : 240;

event_user(10);