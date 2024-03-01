/// @description Insert description here
// You can write your code in this editor

var _dx = x - x_previous;
var _dy = y - y_previous;

if(_dx != 0)
{
	orient_x = sign(x - x_previous);
	rotation = 90 - orient_x * 90;
}
if(_dy != 0)
{
	orient_y = sign(y - y_previous);
	rotation = orient_y * -90;
}
if(_dx != 0 && _dy != 0)
{
	rotation = 90 - orient_x * 90;
	rotation -= 45 * (orient_y * orient_x);
}

x_previous = x;
y_previous = y;

