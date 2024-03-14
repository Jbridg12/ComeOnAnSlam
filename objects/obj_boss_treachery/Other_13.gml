/// @description Choose Attack
// You can write your code in this editor
var _event = choose(7, 8);

if((hp/max_health) < 0.5)
{
	_event = choose(6, 7, 8);
}
in_attack = true;
event_user(6);