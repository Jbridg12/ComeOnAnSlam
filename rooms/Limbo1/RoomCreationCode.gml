
with(obj_game_manager)
{
	switch(room_entrance_id)
	{
		case -1:
			break;
		case 1:
			obj_player.forced_x = 231;
			obj_player.forced_y = 1800;
			break;
		default:
			obj_player.forced_x = 230;
			obj_player.forced_y = 1800;
			break;
	}

	room_entrance_id = -1;
	curr_realm = Realm.Limbo;
}
