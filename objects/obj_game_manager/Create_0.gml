/// @description Insert description here
// You can write your code in this editor

enum Realm
{
	Limbo,
	Lust,
	Treachery,
	MainMenu
}


last_realm = -1;
curr_realm = last_realm;
curr_bgm = noone;


// Room State Map
room_map = ds_map_create();
bgm_map = ds_map_create();
ds_map_add(bgm_map, Realm.Limbo, sndLimboBGM);
ds_map_add(bgm_map, Realm.Lust, sndLustBGM);
ds_map_add(bgm_map, Realm.MainMenu, sndLustBGM);
