/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(self.sprite_index, image_index, x, y, orientation, 1, 0, c_white, 1);

if(on_vine)
{
	x_dir = x - lengthdir_x(attached_length, attached_angle + attached_vine.image_angle);
	y_dir = y - lengthdir_y(attached_length, attached_angle + attached_vine.image_angle);
	draw_arrow(x, y, 
	x_dir,
	y_dir, 
	25);
}