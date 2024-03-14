/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

obj_player.sprite_index = sPlayer;
		
with(obj_anim_destination)
{
	if(index == 1)
	{
		obj_player.animation_destination = self.x;
	}
}

with(obj_boss_trigger_treachery)
{
	event_user(1);	
}

		
//camera_set_view_speed(view_camera[0], 5, 5);
//camera_set_view_target(view_camera[0], obj_camera_target);

instance_create_layer(0, 0, "Instances", obj_dialogueTreachBossEnd);

with(obj_boss_enemy)
{
	instance_destroy();	
}



