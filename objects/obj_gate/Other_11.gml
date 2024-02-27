/// @description Close Gate
// You can write your code in this editor

if(!extended)
{
	move = true;
	screenshake(move_time, 3, 0.5);
	if(move_speed < 0) move_speed *= -1;
	extended = true;
}