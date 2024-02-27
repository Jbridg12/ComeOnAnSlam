/// @description Insert description here
// You can write your code in this editor

instance_create_layer(0, 0, "HiddenInstances", obj_player);

file_delete("save.txt");

in_pause = true;


global.org_win_width = window_get_width();
global.org_win_height = window_get_height();
global.win_width = 1280;
global.win_height = 720;
global.scaling = 1;
global.started = true;


