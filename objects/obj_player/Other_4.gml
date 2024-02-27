/// @description Insert description here
// You can write your code in this editor


room_collision_layer = layer_tilemap_get_id("Collision");
platform_collision_layer = layer_tilemap_get_id("Platforms");
instance_layer = layer_get_id("Instances");


if(forced_x > 0)
{
	x = forced_x; 
	forced_x = -1;
}

if(forced_y > 0)
{
	y = forced_y; 
	forced_y = -1;
}

if(room == MainMenu)
{
	gui_enabled = false;	
	layer = layer_get_id("HiddenInstances");
}
else
{
	gui_enabled = true;	
	layer = layer_get_id("Instances");
}

