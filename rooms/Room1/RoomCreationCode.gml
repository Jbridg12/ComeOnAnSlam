switch(obj_game_manager.room_entrance_id)
{
	case 1:
		Player.x = 2100;
		Player.y = 448;
		break;
	default:
		Player.x = 900;
		Player.y = 448;
}

obj_game_manager.room_entrance_id = 0;

obj_game_manager.curr_realm = Realm.Limbo;