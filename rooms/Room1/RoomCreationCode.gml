switch(obj_game_manager.room_entrance_id)
{
	case 1:
		obj_player.x = 2100;
		obj_player.y = 448;
		break;
	case 2:
		obj_player.x = 2220;
		obj_player.y = 170;
		break;
	case 3:
		obj_player.x = 300;
		obj_player.y = 85;
		break;
	case 4:
		obj_player.x = 450;
		obj_player.y = 170;
		break;
	default:
		obj_player.x = 800;
		obj_player.y = 448;
}

obj_game_manager.room_entrance_id = 0;

obj_game_manager.curr_realm = Realm.Limbo;