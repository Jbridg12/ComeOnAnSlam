/// @description Insert description here
// You can write your code in this editor

if(showing_dialogue == false)
{
	if(dialog.count() <= 0)
	{
		obj_game_manager.in_dialogue = false;
		instance_destroy();
		return;
	}
	
	current_dialogue = dialog.pop();
	showing_dialogue = true;
	obj_game_manager.in_dialogue = true;
}
else
{
	if(keyboard_check_released(key_next) || gamepad_button_check_released(0, gp_next))
	{
		showing_dialogue = false;
		alpha = 0;
	}
	
}
