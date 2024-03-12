// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_list(_x, _y, _width, _height, _type)
{
	var _list = instance_create_layer(_x, _y, "GUI", obj_olist);
	
	with(_list)
	{
		width = _width;
		height = _height;
		type = _type;
		
		switch(_type)
		{
			case LIST_TYPE.OPTIONS:
				break;
			case LIST_TYPE.SETTINGS:
				ds_list_add(list, ["Window Size", global.win_dim, ["960x540", "1280x720", "1920x1080"]]);
				ds_list_add(list, ["Fullscreen", global.fullscreen, ["No", "Yes"]]);
				ds_list_add(list, ["Main Menu", -1, []]);
				ds_list_add(list, ["Close", -1, []]);
				break;
		}
	}
}