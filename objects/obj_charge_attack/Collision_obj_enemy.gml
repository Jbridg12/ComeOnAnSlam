/// @description Insert description here
// You can write your code in this editor



if(ds_list_find_index(other.hit_list, object_index) != -1) return;
ds_list_add(other.hit_list, object_index);
other.invulnerable_timer = other.invulnerable_timer_max;

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

