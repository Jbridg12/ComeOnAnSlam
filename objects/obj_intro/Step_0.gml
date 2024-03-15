/// @description Insert description here
// You can write your code in this editor

if(showing_cutscene == false)
{
	if(image_index >= 4)
	{
		obj_game_manager.in_dialogue = false;
		instance_create_layer(0,0, "Instances", obj_player);
		instance_destroy();
		room_goto(rmStart);
		return;
	}
	else if(image_index == 1)
	{
		instance_create_layer(0, 0, "Instances", obj_dialogue_intro1);	
	}
	
	image_index++;
	showing_cutscene = true;
	
}
else if(!obj_game_manager.in_dialogue) 
{
	if(keyboard_check_released(key_next) || gamepad_button_check_released(0, gp_next) || mouse_check_button_released(mb_left))
	{
		showing_cutscene = false;
	}
	
}