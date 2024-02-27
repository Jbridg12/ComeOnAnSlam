/// @description Insert description here
// You can write your code in this editor

var _scaling = global.scaling;
draw_set_color(c_dkgray);
draw_set_font(-1);
draw_roundrect(x, y, x + (width * _scaling), y + (height * _scaling), false);
draw_set_color(-1);

var _size = ds_list_size(list);

for(var i = 0; i < _size; i++)
{
	var _arr = list[| i];
	var _name = _arr[PARAM.NAME];
	var _sel = _arr[PARAM.SEL_VAL];
	var _vals = _arr[PARAM.VALUES];
	
	var _x = x + padding * _scaling;
	var _y = y + (padding + item_height * i) * _scaling;
	
	if(i != hover_index)
	{
		draw_set_color(c_black);
	}
	
	draw_text(_x, _y, _name);
	
	if(_sel > -1)
	{
		var _val = _vals[_sel];
		draw_set_halign(fa_right);
		draw_text(x + (width - padding) * _scaling, _y, _val);
		draw_set_halign(fa_left);
	}
	
	draw_set_color(c_white);
}
