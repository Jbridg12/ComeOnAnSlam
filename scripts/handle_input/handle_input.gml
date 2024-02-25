// Script assets have changed for v2.3.0 see
// TODO: Gamepad Input gp_()
function handle_input(){
	var isJump = keyboard_check_pressed(vk_space);
	var isSprint =  keyboard_check(vk_lshift);
	var isHoldJump = keyboard_check(vk_space);
	
	var isUp = keyboard_check(ord("W"));
	var isDown = keyboard_check(ord("S"));
	
	var isLeft = keyboard_check(ord("A"));
	var isRight = keyboard_check(ord("D"));

	if(keyboard_check_released(vk_delete))
	{
		room_goto(MainMenu);
	}
	
	if(obj_game_manager.in_dialogue) return;
	if(hazard_cooldown > 0) return;

	// get absolute input value
	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	
	// Default speed set to walking unless player holds sprint key (Shift)
	motion_speed = walk_speed;
	air_resistance = 0.9;


	//--------------------Vine Input management-------------------------
	if(on_vine)
	{
		delta_y = 0;
		delta_x = 0;
		
		// Calculate movement up vine
		if(attached_vine)
		{
			// Vine Should swing with delta_x movement
			
			attached_vine.vine_input = move_x;
			vine_angle = attached_vine.image_angle;
			show_debug_message(vine_angle);
			
			x_dir = attached_vine.x + lengthdir_x(attached_length, 270 + attached_vine.image_angle);
			y_dir = attached_vine.y + lengthdir_y(attached_length, 270 + attached_vine.image_angle);
			delta_x = (x_dir-x);
			delta_y = (y_dir - y);
					
			// All Y has to do is modify the attach length
			move_y = isDown - isUp;
			attached_length += move_y*vine_shimmy_speed;
			max_height = sprite_get_height(attached_vine.sprite_index) + (sprite_get_height(obj_player.sprite_index) / 2);
			attached_length = clamp(attached_length, 0, max_height);
			
				
		}
		
		
	
		if(isJump)
		{
			use_gravity = true;
			on_vine = false;
			vine_cooldown = 30;
			attached_vine.vine_input = 0;
		}
		
		return;
	}
	
	//------------------------------------------------------------------
	
	if(keyboard_check_released(ord("W")))
	{
		trigger_interactibles();
		//Player.max_health = 150;
		//Player.hp = 150;
		//screenshake(30, 5, 0.4);
		//Player.weapon_id++;
		//instance_create_layer(0,0, "Instances", dialogue1);
	}
	
	if(isSprint) 
	{
		air_resistance = 0.95;
		motion_speed = sprint_speed;
	}
	
	delta_x = grounded ? move_x * motion_speed : (delta_x * air_resistance) + (move_x * float_speed);
	
	if(isDown && !grounded)
	{
		// handle dropping through platforms
		platform_transparent = true;
			
	}
	if(isJump)
	{	
		if(isDown)
		{
			// handle dropping through platforms
			platform_transparent = true;
			
		}
		else
		{
			if(grounded || hanging || hanging_timer > 0)
			{
				
				delta_y = jump_speed;
				//if(isSprint) delta_x *= 1.5;
				
				grounded = 0;
				platform_transparent = true;
				curr_jump = max_jump;
			}
			if(hanging || hanging_timer > 0) wall_jump = true;
		}
			
	}
	
	// If player holding the Jump button let them go further
	if(isHoldJump && !grounded)
	{
		curr_jump--;		
	}
	else
	{
		curr_jump = 0;	
	}
	
	var primaryAttack = keyboard_check_pressed(ord("2")) || keyboard_check_pressed(ord("K")) || mouse_check_button_released(mb_left);
	var secondaryAttack = keyboard_check_pressed(ord("3")) || keyboard_check_pressed(ord("L")) || mouse_check_button_released(mb_right);
	
	if(primaryAttack)
	{
		show_debug_message("ATTACK");
		event_user(2);
	}
	
	else if(secondaryAttack)
	{
		show_debug_message("RANGED ATTACK");
		event_user(3);
	}
	
	// Space is used for jump so W will be mapped to miscellaneous functions
	// for testing. 
	// Final verison will use W for interacting with background elements and
	// character dialogues.
	
}