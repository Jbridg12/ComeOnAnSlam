// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_movement()
{
	var colliding_instances_x = [];
	var colliding_instances_y = [];
	
	if(use_gravity)
		delta_y += .5 * weight;
	
	
	
	
	// If Player is hanging then we should calculate Y-axis movement differently
	if(object_get_name(object_index) == "Player" && hanging)
	{
		if(wall_jump)
		{
			delta_y *= 0.8;
			delta_x += abs(jump_speed / 2) * -hanging_side;
			wall_jump = false;
			hanging = false;
			hanging_side = 0;
			hanging_timer = 0;
			
		}
		else
		{
			delta_y *= 0.1;
			hanging = false;
			hanging_timer = 20;
		}
		
	}
	else if(object_get_name(object_index) == "Player" && !hanging)
	{
		// If Player is not moving back into wall then they can free fall off
		if(delta_x != 0) hanging_timer = 0;	
		
		if(hanging_timer > 0)
		{
			if(wall_jump)
			{
				hanging = false;
				delta_y *= 0.8;
				delta_x += abs(jump_speed / 2) * -hanging_side;
				wall_jump = false;
				hanging_side = 0;
				hanging_timer = 0;
			
			}
			else
			{
				show_debug_message(hanging_timer)
				delta_y *= 0.1;
				hanging_timer--;
			}
			
		}
	}
	
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


	//Code to run if there is a vertical collision
	// We're gonna be grounded from the ceiling but ill fix that later
	if (array_length(colliding_instances_y) != 0)
	{
		grounded = 1;
		delta_y = 0; 
		
	}
	else
	{
		grounded = 0;
	}
	

	
	//Code to run if there is a horizontal collision
	if (array_length(colliding_instances_x) != 0)
	{
		
		if(object_get_name(object_index) == "Player")
		{
			// Player colliding with a wall
			
			// Wall Jump Handling
			if(!grounded) 
			{
				//show_debug_message("Hanging");
				
				hanging = true;
				hanging_side = sign(delta_x);
				hanging_timer = 0;
				
			}
		}
		
		delta_x = 0;
	}

	
}