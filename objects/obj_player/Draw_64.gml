/// @description Draw GUI elements in scale of Viewport

// Access correct healthbar sprite for each amount of max HP
var health_bg = noone;
var health_border = noone;
var healthbar_width = 200 * (max_health / 100);

if(gui_enabled)
{
	switch(max_health)
	{
		case 150:
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

	for(var i=0; i < max_ammo; i++)
	{
		var _ammo_sprite = sFullAmmo;
		if(i >= current_ammo) _ammo_sprite = sEmptyAmmo;
		
		draw_sprite(_ammo_sprite, 0, initial_ammo_x + (i * ammo_offset_x), initial_ammo_y);	
	}
}
