/// @description Insert description here
// You can write your code in this editor

if(other.invulnerable) return;

other.invulnerable = true;
show_debug_message("Hit a Walker");
screenshake(20, 3, 0.4);

var damage = 0;

switch(obj_player.weapon_id)
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