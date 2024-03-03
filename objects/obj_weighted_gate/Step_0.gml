/// @description Insert description here
// You can write your code in this editor



if(move && abs(y - y_org) >= s_height)
{
	return;
}
if(!move && y >= y_org)
{
	y = y_org;
	return;
}
	
y += move_speed;
	

