/// @description Insert description here
// You can write your code in this editor


// Handle Input in Main Menu
if(room == MainMenu)
{
	var _arr = layer_get_all_elements("Instances");
	
	if(keyboard_check_released(ord("W")))
	{
		layer_instance_get_instance(_arr[@sel_menu_button]).selected = false;
		
		sel_menu_button -= 1;
		
	}
	if(keyboard_check_released(ord("S")))
	{
		layer_instance_get_instance(_arr[@sel_menu_button]).selected = false;
		
		sel_menu_button += 1;
		
	}
	if(keyboard_check_released(ord("E")))
	{
		with(layer_instance_get_instance(_arr[@sel_menu_button]))
		{
			event_user(0);	
		}
		
	}
	
	
	sel_menu_button = clamp(sel_menu_button, 0, array_length(_arr)-1);
	layer_instance_get_instance(_arr[@sel_menu_button]).selected = true;
}