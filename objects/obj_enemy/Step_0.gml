/// @description Insert description here
// You can write your code in this editor

if(obj_game_manager.in_pause) return;

if(hp <= 0) event_user(2)

if(invulnerable_timer-- == 0)
{
	ds_list_clear(hit_list);	
}
