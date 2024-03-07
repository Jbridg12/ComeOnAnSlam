/// @description Insert description here
// You can write your code in this editor

var _pos = axis == "Y" ? y : x;

if(move && abs(_pos - org) >= s_height)
{
	return;
}
if(!move && _pos >= org)
{
	_pos = org;
	return;
}
	
_pos += move_speed;
	

