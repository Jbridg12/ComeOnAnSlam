/// @description Insert description here
// You can write your code in this editor
if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   var camera = room_get_camera(room, 0);
   camera_set_view_pos(view_camera[0], camera_get_view_x(camera) + _xval, camera_get_view_y(camera) + _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], camera_get_view_x(camera), camera_get_view_y(camera)); 
         shake = false; 
      } 
   } 
}
