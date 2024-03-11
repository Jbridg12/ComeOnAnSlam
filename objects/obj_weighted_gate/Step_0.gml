/// @description Insert description here
// You can write your code in this editor

var _pos = axis == "Y" ? y : x;

if(axis == "Y")
{
	if(move && abs(y - org) >= s_height)
	{
		return;
	}
	if(!move && y >= org)
	{
		y = org;
		return;
	}
	
	y += move_speed;
}
else
{
	if(move && abs(x - org) >= s_height)
	{
		return;
	}
	if(!move && x >= org)
	{
		x = org;
		return;
	}
	
	x -= move_speed;
}

	

