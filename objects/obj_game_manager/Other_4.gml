/// @description Insert description here
// You can write your code in this editor


if(curr_realm != last_realm && curr_realm >= 0)
{
	if(curr_bgm) audio_stop_sound(curr_bgm);
	curr_bgm = audio_play_sound(ds_map_find_value(bgm_map, curr_realm), 1, true);
	last_realm = curr_realm;
}

