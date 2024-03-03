/// @description Room Save
// You can write your code in this editor


var _coll_list = ds_list_create();
var _obs_list = ds_list_create();
var _enemy_list = ds_list_create();
var _interactible_list = ds_list_create();

with(obj_collectible_parent)
{
	var _collectible_struct = 
	{
		object : object_get_name(object_index),
		x : x,
		y : y,
		x_scale : image_xscale,
		y_scale : image_yscale
	};
	
	ds_list_add(_coll_list, _collectible_struct);
}

with(obj_gate)
{
	var _obstacles_struct = 
	{
		object : object_get_name(object_index),
		x : x,
		y : y,
		x_scale : image_xscale,
		y_scale : image_yscale,
		room_index : room_index,
		active : active
	};

	ds_list_add(_obs_list, _obstacles_struct);
}

with(obj_enemy)
{
	var _enemy_struct = 
	{
		object : object_get_name(object_index),
		x : x,
		y : y,
		x_scale : image_xscale,
		y_scale : image_yscale,
		path : path_get_name(follow_path),
		absolute : absolute_path,
		detect : detection_radius,
		path_action : path_action	
	};

	ds_list_add(_enemy_list, _enemy_struct);
}

with(obj_interactible)
{
	var _int_struct;
	
	if(object_get_name(object_index) == "obj_environment_trigger")
	{
		_int_struct = 
		{
			object : object_get_name(object_index),
			x : x,
			y : y,
			x_scale : image_xscale,
			y_scale : image_yscale,
			sprite_index : sprite_index,
			image_index : image_index,
			image_speed : image_speed,
			image_angle : image_angle,
			activated : activated,
			tied_room_index : tied_room_index,
			priority : priority,
			event_id : event_id
		};
	}
	else
	{
		_int_struct = 
		{
			object : object_get_name(object_index),
			x : x,
			y : y,
			x_scale : image_xscale,
			y_scale : image_yscale,
			sprite_index : sprite_index,
			image_index : image_index,
			image_speed : image_speed,
			image_angle : image_angle,
			activated : activated,
			tied_room_index : tied_room_index,
			priority : priority
		};
	}

	ds_list_add(_interactible_list, _int_struct);
}

var _room_data = 
{
	collectibles : _coll_list,
	obstacles  : _obs_list,
	enemies : _enemy_list,
	interactible : _interactible_list
};

if(ds_map_exists(room_map, room))
{
	ds_map_replace(room_map, room, _room_data);	
}
else
{	
	ds_map_add(room_map, room, _room_data);
}


