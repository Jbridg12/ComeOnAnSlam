/// @description Vine Collision
// You can write your code in this editor

if(on_vine) return;
if(other == attached_vine) return;

on_vine = true;
attached_vine = other;
use_gravity = false;
vine_cooldown = -1;

attached_length = point_distance(x, y, other.x, other.y);
attached_angle = point_direction(other.x, other.y, x, y);
