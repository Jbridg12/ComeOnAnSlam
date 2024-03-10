/// @description Insert description here
// You can write your code in this editor

screenshake(5, 1, 0.4);


other.hp -= damage;
other.invulnerable_timer = other.invulnerable_timer_max;

//other.knockback_angle = point_direction(x, y, other.x, other.y);
other.knockback_angle = image_angle;
other.knockback_force = 5;

instance_destroy();