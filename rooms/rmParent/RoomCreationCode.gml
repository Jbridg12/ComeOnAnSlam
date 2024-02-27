
var _entrance_map = ds_map_create();

with(obj_room_entrance)
{
	ds_map_add(_entrance_map, entrance_id, [x, y]);
}

with(obj_game_manager)
{
	if(ds_map_exists(_entrance_map, room_entrance_id))
	{
		var _arr = ds_map_find_value(_entrance_map, room_entrance_id);
		obj_player.forced_x = _arr[@0];
		obj_player.forced_y = _arr[@1];
	}

	room_entrance_id = -1;

	curr_realm = REALM.LIMBO;
}