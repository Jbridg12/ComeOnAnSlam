/// @description Insert description here
// You can write your code in this editor


// Handle Input in Main Menu
if(room == MainMenu)
{
	with(obj_pause) return;
	
	var _arr = layer_get_all_elements("Instances");
	
	if(keyboard_check_released(ord("W")) || gamepad_button_check_pressed(0, gp_padu))
	{
		layer_instance_get_instance(_arr[@sel_menu_button]).selected = false;
		
		sel_menu_button -= 1;
		sel_menu_button = clamp(sel_menu_button, 0, array_length(_arr)-1);
		
	}
	if(keyboard_check_released(ord("S")) || gamepad_button_check_pressed(0, gp_padd))
	{
		layer_instance_get_instance(_arr[@sel_menu_button]).selected = false;
		
		sel_menu_button += 1;
		sel_menu_button = clamp(sel_menu_button, 0, array_length(_arr)-1);
		
	}
	
	layer_instance_get_instance(_arr[@sel_menu_button]).selected = true;
	
	if(keyboard_check_released(ord("E")) || gamepad_button_check_released(0, gp_face1))
	{
		with(layer_instance_get_instance(_arr[@sel_menu_button]))
		{
			event_user(0);	
		}
		
	}
	
	
}