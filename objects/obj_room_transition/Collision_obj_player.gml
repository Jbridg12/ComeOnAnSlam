/// @description Insert description here
// You can write your code in this editor


show_debug_message("Collided with Player");

if(!moving)
{
	obj_game_manager.room_entrance_id = dest_entrance_id;
	if(destination != noone) room_goto(destination);
	moving = true;
}
