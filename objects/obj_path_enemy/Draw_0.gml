/// @description Insert description here
// You can write your code in this editor

var sprite_color = c_white;

if(hit_timer > 0)
{
	sprite_color = c_red;
}

draw_circle_color(x, y, detection_radius, c_white, c_purple, true);
draw_sprite_ext(self.sprite_index, image_index, x, y, 1, 1, 0, sprite_color, 1);
//draw_arrow(x, y, x + (delta_x *100), y + (delta_y*100), 25);