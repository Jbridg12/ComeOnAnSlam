/// @description Insert description here
// You can write your code in this editor

var _index = tied_room_index;
with(obj_obstacle)
{
	if(room_index == _index)
	{
		event_user(0);
	}
}
obj_player.in_ranged = false;
with(obj_game_manager)
{
	event_user(2);	
}

