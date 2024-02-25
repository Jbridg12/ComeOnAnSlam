/// @description Insert description here
// You can write your code in this editor



vine_correction = image_angle * -0.01;

vine_acceleration = vine_correction + (vine_input * 0.1);
vine_speed = (vine_speed * 0.99) + vine_acceleration;
			
vine_position = image_angle + vine_speed;
			
image_angle = clamp(vine_position, -60, 60);
