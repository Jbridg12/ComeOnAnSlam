// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_game()
{
	ds_map_clear(obj_game_manager.room_map);
	room_goto(TestRoomStart);
}