// Script assets have changed for v2.3.0 see
// TODO: Gamepad Input gp_()
function handle_input(){
	var isJump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
	var isSprint =  keyboard_check(vk_lshift) || gamepad_button_check(0, gp_shoulderlb);
	var isHoldJump = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
	
	var isUp = keyboard_check(ord("W"));
	var isDown = keyboard_check(ord("S"));
	
	if(gamepad_axis_value(0, gp_axislv) != 0)
	{
		if(sign(gamepad_axis_value(0, gp_axislv) > 0))
		{
			isDown = 1;
		}
		else
		{
			isUp = 1;	
		}
	}
	
	//var isLeft = keyboard_check(ord("A"));
	//var isRight = keyboard_check(ord("D"));

	if(keyboard_check_released(vk_delete) || gamepad_button_check_released(0, gp_start))
	{
		room_goto(MainMenu);
	}
	
	if(obj_game_manager.in_dialogue) return;
	if(hazard_cooldown > 0) return;

	// get absolute input value
	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	move_x += gamepad_axis_value(0, gp_axislh) > 0 ? ceil(gamepad_axis_value(0, gp_axislh)) : floor(gamepad_axis_value(0, gp_axislh));
	
	// Default speed set to walking unless player holds sprint key (Shift)
	motion_speed = walk_speed;
	air_resistance = 0.9;


	//--------------------Vine Input management-------------------------
	if(on_vine)
	{
		platform_transparent = true;
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
			event_user(7);
		}
		
		return;
	}
	
	//------------------------------------------------------------------
	
	if(keyboard_check_released(ord("W")) || gamepad_button_check_released(0, gp_face2))
	{
		trigger_interactibles();
	}
	
	if(isSprint) 
	{
		air_resistance = 0.95;
		motion_speed = sprint_speed;
		if(sprite_index == sPlayerWalk)
			image_speed = 1.5;
	}
	else
	{
		image_speed = 1;
	}
	
	
	if(in_ranged)
	{
		ranged_angle += move_x * ranged_rotation_speed;
		ranged_angle = clamp(ranged_angle, -30, 210);
		
		delta_x = grounded ? delta_x * 0.5 : (delta_x * air_resistance);
		
	}
	else
	{
		delta_x = grounded ? move_x * motion_speed : (delta_x * air_resistance) + (move_x * float_speed);
		
		if(isDown && !grounded)
		{
			// handle dropping through platforms
			platform_transparent = true;
			
		}
		if(isJump)
		{	
			// Handle Charged Vertical Launch
			if(keyboard_check(vk_shift) && move_x == 0 && charged_vert_enabled)
			{
				delta_y = 0;
				charging_jump = true;
				charge_jump_timer = 120;
			}
			else if(isDown)
			{
				// handle dropping through platforms
				platform_transparent = true;
			
			}
			else
			{
				if(grounded || hanging || hanging_timer > 0)
				{
				
					delta_y = jump_speed;
				
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
	
		// If player holding the Jump button let them go further
		if(isHoldJump && grounded && charging_jump)
		{
			if(keyboard_check(vk_shift))
			{
				if(charge_jump_timer > 0) charge_jump_timer--;
			}
		}
		
		// Deploy Dummy
		if(isSprint && (keyboard_check_released(ord("W")) || gamepad_button_check_released(0, gp_face2)))
		{
			event_user(9);
		}
	
		if(keyboard_check_released(vk_space) || keyboard_check_released(vk_shift) || gamepad_button_check_released(0, gp_face1) || gamepad_button_check_released(0, gp_shoulderlb))
		{
			if(charging_jump)
			{
				// Launch with Massive Speed Charge Jump
				delta_y = lerp(charge_jump_speed, 0, charge_jump_timer / 120);
				charging_jump = 0;
				charge_jump_timer = 0;
				platform_transparent = true;
			
				// Floatier Charge Jump
				//delta_y = lerp(-30, 0, charge_jump_timer / 120);
				//charging_jump = 0;
				//charge_jump_timer = 0;
				//platform_transparent = true;
				//weight = 1;
				//alarm[1] = 60;
			}
		}
	}
	
	
	var primaryAttack = keyboard_check_pressed(ord("2")) || keyboard_check_pressed(ord("K")) || mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face3);
	var secondaryAttack = keyboard_check(ord("3")) || keyboard_check(ord("L")) || mouse_check_button(mb_right) || gamepad_button_check(0, gp_shoulderrb);
	
	var _chargePrimary = keyboard_check(ord("2")) || keyboard_check(ord("K")) || mouse_check_button(mb_left) || gamepad_button_check(0, gp_face3);
	var _releasePrimary = keyboard_check_released(ord("2")) || keyboard_check_released(ord("K")) || mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face3);
	
	if(!primary_enabled) return;
	
	if(charging && _chargePrimary)
	{
		charge_timer++;
		
		// Step through charge sprite over duration of charge
		var _img = floor(sprite_get_number(sprite_index) * (charge_timer / timer_max))
		image_index = clamp(_img, 0, sprite_get_number(sprite_index)-1);
	}
	if(charging && _releasePrimary)
	{
		
		charging = false;
		charge_timer = 0;
		if(charge_timer > timer_max)
		{
			event_user(5); // Charge Attack
		}
		else
		{
			show_debug_message("ATTACK"); // Normal Attack
			event_user(2);	
		}
	}
	
	if(primaryAttack)
	{
		if(in_ranged)
		{
			event_user(3);
		}
		else if(!charge_attack_enabled)
		{
			show_debug_message("ATTACK");
			event_user(2);
		}
		else if(charge_attack_enabled)
		{
			charging = true;
			
			// Set sprite to charging animation sprite
			//sprite_index = TestAttackRight;
			//image_speed = 0;
		}
	}
	
	if(secondaryAttack)
	{
		
		if(!in_ranged && ranged_enabled)
		{
			show_debug_message("RANGED ATTACK");
			in_ranged = true;
			delta_x = 0;
			delta_y = 0;
			if(orientation > 0)
			{
				ranged_angle = 180;
			}
			else
			{
				ranged_angle = 0;	
			}
			
		}
		
		if(isJump && ranged_enabled)
		{
			event_user(4);
		}
	}
	else
	{
		if(in_ranged)
		{
			in_ranged = false;
			
		}
	}
	
}