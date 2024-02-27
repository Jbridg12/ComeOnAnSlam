// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function resize_window(_width, _height)
{
	window_set_size(_width, _height);
	
	global.scaling = _width / 1280;	
	global.win_height = _height;
	global.win_width = _width;
}