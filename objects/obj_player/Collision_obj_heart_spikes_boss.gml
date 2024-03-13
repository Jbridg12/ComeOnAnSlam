/// @description Insert description here
// You can write your code in this editor

hp -= 10;
screenshake(5, 3, 0.5);

var _destX  = 0;
var _destY = 0;

with(obj_safe_spot)
{
	_destX = x;
	_destY = y;
}

x = _destX;
y = _destY;

delta_x = 0;
delta_y = 0;
platform_transparent = false;
hazard_cooldown = 30;