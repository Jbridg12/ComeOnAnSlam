/// @description Secondary Attack


show_debug_message("Shoot Bolt");

if(current_ammo > 0)
{
	var _inst = instance_create_layer(x, y, instance_layer, obj_projectile_player);
	_inst.fire_angle = -ranged_angle - 180;

	current_ammo--;
}