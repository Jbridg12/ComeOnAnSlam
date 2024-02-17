// Script assets have changed for v2.3.0 see
// TODO: Gamepad Input gp_()
function handle_input(){
	var isUp = keyboard_check_pressed(vk_space);
	var isDown = keyboard_check(ord("S"));
	
	var isLeft = keyboard_check(ord("A"));
	var isRight = keyboard_check(ord("D"));


	if(obj_game_manager.in_dialogue) return;

	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	delta_x = move_x * walk_speed;
	
	if (keyboard_check(vk_shift)) delta_x *= 2;
	
	if(isUp)
	{	
		if(isDown)
		{
			// handle dropping through platforms
			platform_transparent = true;
			dropdown_timer = 60;
			
		}
		else
		{
			if(grounded)
			{
				grounded = 0;
				delta_y = jump_speed;
				dropdown_timer = 0;
			}
		}
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
		show_debug_message("YA ATTACK");
		event_user(3);
	}
	
	if(keyboard_check_released(ord("W")))
	{
		Player.weapon_id++;
		//instance_create_layer(0,0, "Instances", dialogue1);
	}
	
}