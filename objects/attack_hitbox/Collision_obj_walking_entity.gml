/// @description Insert description here
// You can write your code in this editor

if(other.invulnerable) return;

other.invulnerable = true;
show_debug_message("Hit a Walker");

var damage = 0;

switch(Player.weapon_id)
{
	case 0:
		damage = 5;
		break;
	case 1:
		damage = 10;
		break;
	default:
		damage = 100;
		break;
}

other.health -= damage;

other.hit_timer = 15;