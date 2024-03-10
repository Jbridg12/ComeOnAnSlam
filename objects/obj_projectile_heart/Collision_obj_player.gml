/// @description Insert description here
// You can write your code in this editor

var _damage = damage;

with(other)
{
	if(!invulnerable)
	{
		hp -= _damage;
		screenshake(5, 2, 0.5);
		invulnerable = true;
		hit_timer = 60;
	
		var _angle = point_direction(obj_player.x, obj_player.y, other.x, other.y);
		knockback_force_x = 0;
		knockback_force_y = 0;
		contact_dy = delta_y;
	
		if(on_vine) event_user(7);
	}
}

instance_destroy();
