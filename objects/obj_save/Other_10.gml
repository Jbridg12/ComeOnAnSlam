/// @description Interact
// You can write your code in this editor



// Inherit the parent event
event_inherited();

with(obj_player) hp = max_health;
instance_create_layer(0, 0, layer_get_id("Instances"), obj_dialogueSave);
save_game();

alarm[0] = 60;
