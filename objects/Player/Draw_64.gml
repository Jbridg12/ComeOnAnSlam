/// @description Draw GUI elements in scale of Viewport

// Access correct healthbar sprite for each amount of max HP
var health_bg = noone;
var health_border = noone;
var healthbar_width = 200 * (max_health / 100);

switch(max_health)
{
	case 150:
		show_debug_message("100 Hp");
		health_bg = healthbar_bg_lvl2;
		health_border = healthbar_border_lvl2;
		break;
	default:
		health_bg = healthbar_bg;
		health_border = healthbar_border;
		break;
}


draw_sprite(health_bg, 0, healthbar_offset_x, healthbar_offset_y);

draw_sprite_stretched(healthbar, 
					  0, 
					  healthbar_offset_x,
					  healthbar_offset_y, 
					  (hp / max_health) * healthbar_width,
					  healthbar_height);
					  
draw_sprite(health_border, 0, healthbar_offset_x, healthbar_offset_y)

