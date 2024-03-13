/// @description Insert description here
// You can write your code in this editor


var inst;
inst = collision_rectangle(x - sprite_get_width(sprite_index)/2 , 
							y - sprite_get_height(sprite_index)/2, 
							x + sprite_get_width(sprite_index)/2 ,
							y + sprite_get_height(sprite_index)/2,  
							obj_player, false, true);
if (inst != noone)
{
	sprite_index = sSaveHover;
	image_speed = 0.2;
}
else
{
	sprite_index = sSaveBook;
}

