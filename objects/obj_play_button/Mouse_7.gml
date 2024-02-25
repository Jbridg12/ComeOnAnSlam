/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_game_manager);
instance_destroy(obj_player);

instance_create_layer(0, 0, "HiddenInstances", obj_game_manager);
instance_create_layer(0, 0, "HiddenInstances", obj_player);

room_goto(Room1);

