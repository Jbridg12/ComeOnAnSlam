/// @description Insert description here
// You can write your code in this editor


if(showing_dialogue == true)
{
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 10;
	
	height = string_height(current_dialogue.message);
	
	if(sprite_get_height(current_dialogue.sprite) > height)
	{
		height = sprite_get_height(current_dialogue.sprite);	
	}
	
	height += padding * 2;
	
	var base_y = view_hport[0] - height;
	
	text_x = sprite_get_width(current_dialogue.sprite) + (padding * 2);
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, base_y , display_get_gui_width(), base_y + height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, base_y + border, display_get_gui_width() - border, base_y + height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), base_y + (border * 2), display_get_gui_width() - (border * 2), base_y + height - (border * 2), false);

	if(current_dialogue.sprite != -1)
	{
		draw_sprite(current_dialogue.sprite, 0, border * 3, base_y + (border * 2));	
	}
	
	draw_set_font(fLargeText);
	
	draw_set_color(c_white);
	draw_text_ext(text_x, base_y + text_y, current_dialogue.message, 16, display_get_gui_width() -192);

	alpha = lerp(alpha, 1, 0.06);

}

draw_set_alpha(1);