// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_game()
{
	ds_map_clear(obj_game_manager.room_map);
	instance_destroy(obj_player);
	instance_create_layer(0,0, "Instances", obj_player);
	room_goto(Lust_Penthouse);
}