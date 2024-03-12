/// @description Close
// You can write your code in this editor
var _event = 7;

if((hp/max_health) < 0.5)
{
	_event = spikes_active ? 8 : choose(8, 9);
}

attack_cooldown = ((hp/max_health) < 0.5) ? 180 : 240;

event_user(_event);