/// @description Insert description here
// You can write your code in this editor

last_realm = -1;
curr_realm = last_realm;
curr_bgm = noone;


// Room State Map
room_map = ds_map_create();
_room_map = {};
bgm_map = ds_map_create();

ds_map_add(bgm_map, REALM.LIMBO, sndLimboBGM);
ds_map_add(bgm_map, REALM.TREACHERY, sndTreachBGM);
ds_map_add(bgm_map, REALM.LUST, sndLustBGM);
ds_map_add(bgm_map, REALM.MAINMENU, sndLustBGM);
gamepad_set_axis_deadzone(0, 0.5);

in_pause = false;
in_dialogue = false;
room_entrance_id = 0;

sel_menu_button = 0;
recently_escaped = 0;
boss_defeated = 0;