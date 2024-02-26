instance_destroy(obj_game_manager);
instance_destroy(obj_player);

instance_create_layer(0, 0, "HiddenInstances", obj_game_manager);
instance_create_layer(0, 0, "HiddenInstances", obj_player);

with(obj_game_manager)
{
	curr_realm = Realm.MainMenu;
}