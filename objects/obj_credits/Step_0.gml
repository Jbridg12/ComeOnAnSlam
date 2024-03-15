/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_released(key_next) || gamepad_button_check_released(0, gp_next) || mouse_check_button_released(mb_left))
{
	room_goto(MainMenu);
	obj_player.gui_enabled = true;
	instance_destroy();
}