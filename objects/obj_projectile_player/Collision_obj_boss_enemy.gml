/// @description Insert description here
// You can write your code in this editor

if(other.invulnerable)
{
	screenshake(5, 1, 0.4);

	var _damage = 0;
	switch(obj_player.weapon_id)
	{
		case 0:
			_damage = 2;
			break;
		case 1:
			_damage = 5;
			break;
		case 2:
			_damage = 10;
			break;
		case 3:
			_damage = 25;
			break;
		case 4:
			_damage = 50;
			break;
		default:
			_damage = 100;
			break;
	}
	other.hp -= damage;
	other.invulnerable_timer = other.invulnerable_timer_max;
}

instance_destroy();