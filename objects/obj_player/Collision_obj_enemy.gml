/// @description Insert description here
// You can write your code in this editor

if(!invulnerable)
{
	var _damage = 10 * obj_game_manager.curr_realm; 
	hp -= _damage;
	
	screenshake(5, 2, 0.5);
	invulnerable = true;
	hit_timer = 60;
	
	var _angle = point_direction(obj_player.x, obj_player.y, other.x, other.y);
	knockback_force_x = -12 * dcos(_angle);
	knockback_force_y = 6 * dsin(_angle);
	contact_dy = delta_y;
	
	if(on_vine) event_user(7);
}