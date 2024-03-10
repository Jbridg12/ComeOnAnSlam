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
	
		if(on_vine) event_user(7);
	}
}

instance_destroy();
