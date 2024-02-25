/// @description Insert description here
// You can write your code in this editor


if(curr_realm != last_realm && curr_realm >= 0)
{
	if(curr_bgm) audio_stop_sound(curr_bgm);
	curr_bgm = audio_play_sound(ds_map_find_value(bgm_map, curr_realm), 1, true);
	last_realm = curr_realm;
}


if(ds_map_exists(room_map, room))
{
	var data = ds_map_find_value(room_map, room)
	instance_destroy(obj_collectible_parent);
	
	var coll_list = data.collectibles;
	
	for(var i = 0; i < ds_list_size(coll_list); i++)
	{
		var struct = ds_list_find_value(coll_list, i);
		
		var inst = instance_create_layer(struct.x, struct.y, "Instances", asset_get_index(struct.object));
		inst.image_xscale = struct.x_scale;
		inst.image_yscale = struct.y_scale;
	}
	
}
