/// @description Insert description here
// You can write your code in this editor

if(!triggered)
{
	if(instance_exists(obj_boss_enemy))
	{
		other.sprite_index = sPlayer;
		
		var _index = animation_destination;
		with(obj_room_entrance)
		{
			if(entrance_id == _index)
			{
				obj_player.animation_destination = self.x;
			}
		}
		
		
		camera_set_view_speed(view_camera[0], 5, 5);
		camera_set_view_target(view_camera[0], obj_boss_enemy);
		_index = tied_room_index;
	
		with(obj_obstacle)
		{
			if(room_index == _index)
			{
				event_user(1);
			}
		}
		event_user(0);
	}

	triggered = true;
}