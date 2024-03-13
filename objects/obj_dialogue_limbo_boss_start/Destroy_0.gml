/// @description Insert description here
// You can write your code in this editor

if(obj_game_manager.curr_bgm) audio_stop_sound(obj_game_manager.curr_bgm);

obj_game_manager.curr_bgm = audio_play_sound(sndCollect, 1, true);

with(obj_boss_enemy)
{
	active = true;	
}

camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_target(view_camera[0], obj_player);