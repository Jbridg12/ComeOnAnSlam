/// @description Insert description here
// You can write your code in this editor


var _cam = view_camera[0];

var struct = {
	cam : _cam,
	x : camera_get_view_x(_cam),
	y : camera_get_view_y(_cam),
	wid : camera_get_view_width(_cam),
	height : camera_get_view_height(_cam),
	follow : camera_get_view_target(_cam)
}


if(room == rmGameOver)
{
	camera_set_view_pos(view_camera[0], 0, 0);	
}

// Handle Input in Main Menu
if(room == MainMenu || room = rmGameOver)
{
	with(obj_pause) return;
	
	var _arr = layer_get_all_elements("Instances");
	
	if(keyboard_check_released(ord("W")) || gamepad_button_check_pressed(0, gp_padu))
	{
		
		sel_menu_button -= 1;
		sel_menu_button = clamp(sel_menu_button, 0, array_length(_arr)-1);
		
	}
	if(keyboard_check_released(ord("S")) || gamepad_button_check_pressed(0, gp_padd))
	{
		
		sel_menu_button += 1;
		sel_menu_button = clamp(sel_menu_button, 0, array_length(_arr)-1);
		
	}
	
	
	var _sel_button = sel_menu_button;
	
	with(obj_button_parent)
	{	
		if(order == _sel_button)
		{
			selected = true;
		}
		else
		{
			selected = false;
		}	
	}
	
	if(keyboard_check_released(ord("E")) || gamepad_button_check_released(0, gp_face1))
	{
		with(obj_button_parent)
		{	
			if(order == _sel_button)
			{
				event_user(0);	
			}	
		}
		
	}
	
	
}