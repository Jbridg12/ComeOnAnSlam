/// @description Retrigger Attack Events
// You can write your code in this editor

alarmed = false;
if(in_dash)
{
	event_user(8);
}

if(in_circle_attack)
{
	event_user(6);	
}

if(in_slam)
{
	event_user(7);	
}