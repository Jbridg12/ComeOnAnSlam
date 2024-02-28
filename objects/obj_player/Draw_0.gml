/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(sprite_index, image_index, x, y, orientation, 1, 0, c_white, 1);

// Bugtesting ranged movement direction
if(in_ranged)
{
	x_dir = x - lengthdir_x(50, -ranged_angle);
	y_dir = y - lengthdir_y(50, -ranged_angle);
	draw_arrow(x, y, 
	x_dir,
	y_dir, 
	25);
}
