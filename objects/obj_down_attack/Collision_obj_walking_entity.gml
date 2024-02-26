/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();



if(!wall_collided)
{
	obj_player.delta_y = obj_player.bounce_speed;
	wall_collided = true;
}