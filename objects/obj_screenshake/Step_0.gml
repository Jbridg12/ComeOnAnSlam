/// @description Insert description here
// You can write your code in this editor
if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   

   
   camera_set_view_pos(view_camera[0], org_cam_pos_x + _xval, org_cam_pos_y + _yval);

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], org_cam_pos_x, org_cam_pos_y); 
         shake = false; 
      } 
   } 
}
