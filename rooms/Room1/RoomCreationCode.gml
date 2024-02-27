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
		case 2:
			obj_player.forced_x = 2220;
			obj_player.forced_y = 170;
			break;
		case 3:
			obj_player.forced_x = 300;
			obj_player.forced_y = 45;
			break;
		case 4:
			obj_player.forced_x = 750;
			obj_player.forced_y = 170;
			break;
		default:
			obj_player.forced_x = 800;
			obj_player.forced_y = 448;
	}

	room_entrance_id = -1;

	curr_realm = REALM.LIMBO;
}