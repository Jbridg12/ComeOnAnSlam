
with(obj_game_manager)
{
	switch(room_entrance_id)
	{
		case -1:
			break;
		case 1:
			obj_player.forced_x = 2100;
			obj_player.forced_y = 448;
			break;
		default:
			obj_player.forced_x = 800;
			obj_player.forced_y = 448;
	}

	room_entrance_id = -1;

	curr_realm = Realm.Limbo;
}

