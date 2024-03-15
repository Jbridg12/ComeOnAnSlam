/// @description Insert description here
// You can write your code in this editor

var _index = tied_room_index;
with(obj_obstacle)
{
	if(room_index == 4)
	{
		event_user(0);
	}
	if(room_index == 5)
	{
		event_user(0);
	}
}

with(obj_boss_enemy)
{
	instance_destroy();	
}


with(obj_game_manager)
{
	audio_stop_all()
}

obj_player.sprite_index = sPlayer;
obj_player.in_ranged = false;
with(obj_anim_destination)
{
	if(index == 1)
	{
		obj_player.animation_destination = self.x;
		obj_player.animation_speed = 1.5;
	}
}
obj_player.hazard_cooldown = 120;
instance_create_layer(0, 0, "Instances", obj_dialogueTreachBossEnd);
