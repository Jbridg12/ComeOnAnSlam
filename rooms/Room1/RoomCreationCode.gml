switch(obj_game_manager.room_entrance_id)
{
	case 1:
		obj_player.x = 2100;
		obj_player.y = 448;
		break;
	default:
		obj_player.x = 800;
		obj_player.y = 448;
}

obj_game_manager.room_entrance_id = 0;

obj_game_manager.curr_realm = Realm.Limbo;