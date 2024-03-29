// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_movement()
{
	var colliding_instances_x = [];
	var colliding_instances_y = [];
	
	
	if(use_gravity)
	{
		// Only apply gravity if the player is not holding Jump to extend distance
		if(object_get_name(object_index) != "obj_player" || curr_jump <= 0)
		{
			delta_y += .4 * weight;
		}
	}
	
	
	
	
	// If Player is hanging then we should calculate Y-axis movement differently
	if(object_get_name(object_index) == "obj_player" && (hanging || hanging_timer > 0))
	{
		// If Player is trying to leave the wall then they can free fall off
		if(!hanging && delta_x != 0) hanging_timer = 0;	
		
		// If they Press jump off the wall
		if(wall_jump)
		{
			// Adjust height to not be that vertical
			delta_y *= 0.8;
			
			// Push the player out further than normal to prevent infinite scaling
			delta_x += abs(jump_speed) * -hanging_side;
			
			// Reset flags
			wall_jump = false;
			hanging = false;
			hanging_side = 0;
			hanging_timer = 0;
			
		}
		else
		{
			if(hanging)
			{
				// If the hang is stopped by releaseing key,
				// Give the player a snall frame forgiveness window
				hanging_timer = hanging_forgiveness;
			}
			else
			{
				// Otherwise the timer should be counting down
				hanging_timer--;
			}
			
			// If they aren't jumping, make player slowly slide down wall
			delta_y *= 0.1;
			
			// Reset flag
			hanging = false;
		}
		
	}
	
	
	// Detect Collisions
	if(platform_transparent)
	{
		
		colliding_instances_x = move_and_collide(delta_x, 0, [room_collision_layer, obj_obstacle]);
		colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer, obj_obstacle]);
		
		if(object_get_name(object_index) == "obj_player")
		{
			var inst;
			inst = collision_rectangle( x - sprite_get_width(sprite_index)/2 , 
										bbox_top, 
										x + sprite_get_width(sprite_index)/2 ,
										bbox_bottom,  
										platform_collision_layer, false, true);
			if (inst == noone)
			{
				if(delta_y>0) platform_transparent = false;	
			}
		}

	}
	else
	{
		// Overlappable enemies
		//var _oldX = x;
		//var _oldY = y;
		colliding_instances_x = move_and_collide(delta_x, 0, [room_collision_layer, platform_collision_layer, obj_obstacle]);
		colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer, platform_collision_layer, obj_obstacle]);	

		// Tileset Collision Fails in HTML5 No idea why this is an attempt to fix
		//if(object_get_name(object_index) == "obj_player")
		//{
		//	var inst;
		//	inst = collision_rectangle( x - sprite_get_width(sprite_index)/2 , 
		//								bbox_top, 
		//								x + sprite_get_width(sprite_index)/2 ,
		//								bbox_bottom,  
		//								[room_collision_layer, platform_collision_layer], false, true);
			
		//	show_debug_message("x_collide: ");
		//	show_debug_message(inst);
		//	if(inst != noone)
		//	{
		//		x = _oldX;
		//		array_push(colliding_instances_x, inst); 
		//	}
		//}
		//if(object_get_name(object_index) == "obj_player")
		//{
		//	var inst;
		//	inst = collision_rectangle( x - sprite_get_width(sprite_index)/2 , 
		//								bbox_top, 
		//								x + sprite_get_width(sprite_index)/2 ,
		//								bbox_bottom,  
		//								[room_collision_layer, platform_collision_layer], false, true);
			
		//	show_debug_message("y_collide: ");
		//	show_debug_message(inst);
		//	if(inst != noone)
		//	{
		//		y = _oldY;
		//		array_push(colliding_instances_y, inst); 
		//	}
		//}
		//show_debug_message(delta_x);
		//show_debug_message(delta_y);
		
		// Case if we want enemies to not be overlappable
		//if(object_index == obj_player)
		//{
		//	colliding_instances_x = move_and_collide(delta_x, 0, [room_collision_layer, platform_collision_layer, obj_obstacle, obj_enemy]);
		//	colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer, platform_collision_layer, obj_obstacle, obj_enemy]);
		//}
		//else
		//{
		//	colliding_instances_x = move_and_collide(delta_x, 0, [room_collision_layer, platform_collision_layer, obj_obstacle, obj_player]);
		//	colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer, platform_collision_layer, obj_obstacle, obj_player]);
		//}
		
	}


	//Code to run if there is a vertical collision
	// We're gonna be grounded from the ceiling but ill fix that later
	if (array_length(colliding_instances_y) != 0 )
	{
		// Catch case for collision if enemies are made collidable
		//if(array_contains(colliding_instances_x, obj_enemy))
		//{
			
		//}
		if(object_get_name(object_index) == "obj_player" && delta_y > 0)
		{
			grounded = 1;
		}
		
		delta_y = 0; 
	}
	else
	{
		grounded = 0;
	}
	
	//Code to run if there is a horizontal collision
	if (array_length(colliding_instances_x) != 0)
	{
		
		if(object_get_name(object_index) == "obj_player")
		{

			if(array_contains(colliding_instances_x, room_collision_layer))
			{
				// Wall Jump Handling
				if(!grounded && wall_jump_enabled) 
				{
					if(move_x != 0)
					{
						hanging = true;
						hanging_side = sign(delta_x);
						hanging_timer = 0;
					}
				
				}
			}
		}
		
		delta_x = 0;
	}

	if(object_get_name(object_index) == "obj_player")
	{
		if(active_hitbox)
		{
			//active_hitbox.x += x - last_x;
			//active_hitbox.y += y - last_y;
			active_hitbox_dx = x- last_x;
			active_hitbox_dy = y - last_y;
		}
		
		last_x = x;
		last_y = y;
	}
	
}