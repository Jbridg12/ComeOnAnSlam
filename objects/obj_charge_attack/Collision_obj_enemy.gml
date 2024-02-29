/// @description Insert description here
// You can write your code in this editor


if(other.invulnerable) return;

other.invulnerable = true;
screenshake(20, 3, 0.4);

var damage = 0;

switch(obj_player.weapon_id)
{
	case 0:
		damage = 20;
		break;
	case 1:
		damage = 40;
		break;
	default:
		damage = 400;
		break;
}

other.hp = damage;
other.hit_timer = 15;

other.knockback_angle = point_direction(obj_player.x, obj_player.y, other.x, other.y);

other.knockback_force = 20;

