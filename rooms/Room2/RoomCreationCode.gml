switch(obj_game_manager.room_entrance_id)
{
	case 1:
		obj_player.x = 230;
		obj_player.y = 1800;
		break;
	default:
		obj_player.x = 230;
		obj_player.y = 1800;
		break;
}

obj_game_manager.room_entrance_id = 0;

obj_game_manager.curr_realm = Realm.Lust;