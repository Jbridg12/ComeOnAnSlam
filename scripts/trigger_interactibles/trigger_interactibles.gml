// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function trigger_interactibles()
{
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x - sprite_get_width(sprite_index)/2 , 
										y - sprite_get_height(sprite_index)/2, 
										x + sprite_get_width(sprite_index)/2 ,
										y + sprite_get_height(sprite_index)/2,  
										obj_interactible, false, true, _list, false);
	if (_num > 0)
	{
		
		show_debug_message("Interact");
		var highest_priority = noone;
		var prio = -1;
		

		for (var i = 0; i < _num; ++i;)
		{
		    if (_list[| i].priority > prio)
			{
				highest_priority = _list[| i];
				prio = highest_priority.priority;
			}
		}
		
		with(highest_priority) event_user(0);
		
	}
	ds_list_destroy(_list);
}