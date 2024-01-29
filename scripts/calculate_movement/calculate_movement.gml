// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_movement()
{
	var colliding_instances_x;
	var colliding_instances_y;
	
	if(use_gravity)
		delta_y += 1;
	
	if(platform_transparent)
	{
		colliding_instances_x = move_and_collide(delta_x, 0, room_collision_layer);
		colliding_instances_y = move_and_collide(0, delta_y, room_collision_layer);
		
	
	}
	else
	{
		colliding_instances_x = move_and_collide(delta_x, 0, [room_collision_layer, platform_collision_layer]);
		
		if(delta_y < 0)
		{
			colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer]);
		}
		else
		{
				colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer, platform_collision_layer]);
		}
	}

	
	if (array_length(colliding_instances_x) != 0) delta_x = 0;
	if (array_length(colliding_instances_y) != 0)
	{
		grounded = 1;
		delta_y = 0; 
		
	}
}