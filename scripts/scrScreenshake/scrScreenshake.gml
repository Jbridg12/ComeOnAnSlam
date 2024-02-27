// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_time, _magnitude, _fade)
{
   with (obj_screenshake)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
	  org_cam_pos_x = camera_get_view_x(view_camera[0])
	  org_cam_pos_y = camera_get_view_y(view_camera[0])
   }
}