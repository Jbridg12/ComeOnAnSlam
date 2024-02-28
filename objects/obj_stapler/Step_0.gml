/// @description Insert description here
// You can write your code in this editor



var _colliding_instances_x = [];
var _colliding_instances_y = [];

delta_x = lengthdir_x(move_speed, fire_angle);
delta_y = lengthdir_y(move_speed, fire_angle);

_colliding_instances_x = move_and_collide(delta_x, 0, [room_collision_layer, obj_obstacle]);
		
_colliding_instances_y = move_and_collide(0, delta_y, [room_collision_layer, obj_obstacle]);

// Destroy instance if collides with wall
if (array_length(_colliding_instances_x) != 0)
{
	if(ricochet >= 2)
	{
		event_user(2);
	}
	else
	{
		fire_angle = 180 - fire_angle;
		ricochet++;
		x -= (sprite_width/2) * sign(delta_x);
	}
}
else if (array_length(_colliding_instances_y) != 0) 
{
	if(ricochet >= 2)
	{
		event_user(2);
	}
	else
	{
		ricochet++;
		fire_angle *= -1;
		y -= (sprite_height/2) * sign(delta_y); 
	}
}

