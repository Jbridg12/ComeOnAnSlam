// Script assets have changed for v2.3.0 see
// TODO: Gamepad Input gp_()
function handle_input(){
	var isJump = keyboard_check_pressed(vk_space);
	var isSprint =  keyboard_check(vk_lshift);
	var isUp = keyboard_check(vk_space);
	var isDown = keyboard_check(ord("S"));
	
	var isLeft = keyboard_check(ord("A"));
	var isRight = keyboard_check(ord("D"));


	if(obj_game_manager.in_dialogue) return;

	// get absolute input value
	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	
	// Default speed set to walking unless player holds sprint key (Shift)
	motion_speed = walk_speed;
	air_resistance = 0.9;
	
	if(isSprint) 
	{
		air_resistance = 0.95;
		motion_speed = sprint_speed;
	}
	
	delta_x = grounded ? move_x * motion_speed : (delta_x * air_resistance) + (move_x * float_speed);
	
	
	if(isJump)
	{	
		if(isDown)
		{
			// handle dropping through platforms
			platform_transparent = true;
			dropdown_timer = 60;
			
		}
		else
		{
			if(grounded || hanging || hanging_timer > 0)
			{
				
				delta_y = jump_speed;
				//if(isSprint) delta_x *= 1.5;
				
				grounded = 0;
				dropdown_timer = 0;
				curr_jump = max_jump;
			}
			if(hanging || hanging_timer > 0) wall_jump = true;
			
		}
	}
	
	// If player holding the Jump button let them go further
	if(isUp && !grounded)
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
	if(keyboard_check_released(ord("W")))
	{
		//Player.max_health = 150;
		//Player.hp = 150;
		//screenshake(30, 5, 0.4);
		//Player.weapon_id++;
		//instance_create_layer(0,0, "Instances", dialogue1);
	}
	
}