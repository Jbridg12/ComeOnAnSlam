/// @description Insert description here
// You can write your code in this editor

hp = max_health;
in_animation = false;

room_collision_layer = layer_tilemap_get_id("Collision");
platform_collision_layer = layer_tilemap_get_id("Platforms");
instance_layer = layer_get_id("Instances");


// Movement Parameters

saved_Vspeed = 0;
saved_Hspeed = 0;

delta_x = 0;
delta_y = 0;
orientation = 0;
grounded = 0;