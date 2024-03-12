/// @description Insert description here
// You can write your code in this editor

event_inherited();

// Object Parameters
// Contact Parameters
invulnerable = false;
invulnerable_timer_max = 30;
invulnerable_timer = 0;
attack_cooldown = 0;
target_x = 0;
target_y = 0;

hit_list = ds_list_create();

// Movement Parameters 
x_previous = x;
y_previous = y;
orient_x = 1;
orient_y = 1;
rotation = 0;
active = false;
delta_x = 0;
delta_y = 0;

cutscene_speed = 2;
move_speed = 3;