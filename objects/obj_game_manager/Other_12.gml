/// @description Change BGM
// You can write your code in this editor

if(curr_bgm) audio_stop_sound(curr_bgm);
curr_bgm = audio_play_sound(ds_map_find_value(bgm_map, curr_realm), 1, true);
	
switch(curr_realm)
{
	case REALM.LIMBO:
		audio_sound_loop_start(curr_bgm, 19.2);
		audio_sound_loop_end(curr_bgm, 115.2);
		break;
	case REALM.LUST:
		audio_sound_loop_start(curr_bgm, 14.117);
		audio_sound_loop_end(curr_bgm, 63.529);
		break;
	case REALM.TREACHERY:
		audio_sound_loop_start(curr_bgm, 9.6);
		audio_sound_loop_end(curr_bgm, 86.4);
		break;
	case REALM.MAINMENU:
		audio_sound_loop_start(curr_bgm, 14.117);
		audio_sound_loop_end(curr_bgm, 63.529);
		break;
	default:
		break;
}
	