/// @description Insert description here
// You can write your code in this editor

if(in_pause)
{
	in_pause = false;
	
	with(all)
	{
		event_user(1);	
	}
}
else
{
	in_pause = true;
	
	with(all)
	{
		event_user(0);	
	}
}
	

