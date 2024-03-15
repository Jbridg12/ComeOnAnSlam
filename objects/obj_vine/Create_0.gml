/// @description Insert description here
// You can write your code in this editor

// Set behind player
instance_depth = layer_get_depth(layer_get_id("Instances"));
depth = instance_depth + 1;

// Kinematics Parameters
vine_speed = 0;
vine_acceleration = 0;
vine_input = 0;
vine_correction = 0;
vine_position = 0;