/// @description Insert description here
// You can write your code in this editor
if(!invulnerable)
{
	if(health-- <= 0)
		instance_destroy();
	invulnerable = true;
	alarm[0] = 30;
}
