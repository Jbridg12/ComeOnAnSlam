/// @description Insert description here
// You can write your code in this editor

hp = max_health;
hit_timer = 0;
in_animation = false;

room_collision_layer = layer_tilemap_get_id("Collision");
platform_collision_layer = layer_tilemap_get_id("Platforms");
instance_layer = layer_get_id("Instances");


// Movement Parameters

saved_Vspeed = 0;
saved_Hspeed = 0;

delta_x = 0;
delta_y = 0;
orientation = 1;
grounded = 0;