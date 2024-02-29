/// @description Insert description here
// You can write your code in this editor

var _index = tied_room_index;
var _tied_object = noone;
with(obj_obstacle)
{
	if(room_index == _index) _tied_object = self;
}

tied_object = _tied_object;


