/// @description Secondary Attack


if(current_ammo > 0)
{
	// Trigger SFX
	audio_play_sound(sndRanged_Fire, 0, false);
	
	var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_player);
	_inst.fire_angle = -ranged_angle - 180;

	current_ammo--;
}