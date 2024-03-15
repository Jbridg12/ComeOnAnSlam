/// @description Insert description here
// You can write your code in this editor

var _angle = point_direction(target.x, target.y, x, y)
image_angle = _angle + 180;
fire_angle = _angle + 180;

var _csq = power(abs(x- target.x), 2) + power(abs(y- target.y), 2);
var _c = sqrt(_csq);

if(triggered) return;
move_speed = (exp(_c) - exp(-_c)) / (exp(_c) + exp(-_c));
move_speed = (_c + 10) / 250;
move_speed *= 5;
// Inherit the parent event
event_inherited();

