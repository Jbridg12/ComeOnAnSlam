/// @description Insert description here
// You can write your code in this editor

var _damage = damage;

var _x  = x + 16;
var _y = y + 32;
with(other)
{
	if(!invulnerable)
	{
		hp -= _damage;
		screenshake(10, 5, 0.5);
		invulnerable = true;
		hit_timer = 30;
		
		var _angle = point_direction(obj_player.x, obj_player.y, _x, _y);
		knockback_force_x = -12 * dcos(_angle);
		knockback_force_y = 6 * dsin(_angle);
		contact_dy = delta_y;
	
		if(on_vine) event_user(7);
	}
}

instance_destroy();