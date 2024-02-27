/// @description Insert description here
// You can write your code in this editor

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _mousePressed = mouse_check_button_released(mb_left);

var _scaling = global.scaling;
var _size = ds_list_size(list);

for(var i = 0; i < _size; i++)
{
	var _arr = list[| i];
	var _name = _arr[PARAM.NAME];
	var _sel = _arr[PARAM.SEL_VAL];
	var _vals = _arr[PARAM.VALUES];
	
	var _x1 = x + padding * _scaling;
	var _y1 = y + (padding + item_height * i) * _scaling;
	var _x2 = x + (width - padding) * _scaling;
	var _y2 = _y1 + item_height * _scaling;
	
	
	var _hover = point_in_rectangle(_mouseX, _mouseY, _x1, _y1, _x2, _y2);
	
	if(_hover)
	{
		hover_index = i;
		
		if(_sel == -1 && _mousePressed)
		{
			switch(_name)
			{
				case "Close":
					instance_destroy();
				break;
			}
		}
		
		if(_sel > -1)
		{
			var _wheel = mouse_wheel_up() - mouse_wheel_down();
			
			if(_wheel != 0)
			{
				_sel += _wheel;
				
				_sel = clamp(_sel, 0, array_length(_vals) - 1);
				
				_arr[@ PARAM.SEL_VAL] = _sel;
				
				if(type == LIST_TYPE.SETTINGS)
				{
					switch(_name)
					{
						case "Window Size":
							switch(_vals[_sel])
							{
								case "960x540":
									resize_window(960, 540);
									break;
								case "1280x720":
									resize_window(1280, 720);
									break;
								case "1920x1080":
									resize_window(1920, 1080);
									break;
							}
							break;
						case "Fullscreen":
							if(_vals[_sel] == "Yes")
							{
								window_set_fullscreen(true);
							}
							else if (_vals[_sel] == "No")
							{
								window_set_fullscreen(false);
							}
							break;
						
					}
				}
			}
		}
	}
	
}