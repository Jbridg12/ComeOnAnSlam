/// @description Insert description here
// You can write your code in this editor
var _destroy = false;
with(obj_margaret_npc_trigger)
{
	if(activated)
		_destroy = true;
}

if(_destroy)
{
	instance_destroy();
	return;
}