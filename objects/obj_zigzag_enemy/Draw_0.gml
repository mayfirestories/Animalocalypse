draw_self()
draw_text(x,y-32,string(hp))

var view_left   = camera_get_view_x(view_camera[0]);
var view_top    = camera_get_view_y(view_camera[0]);
var view_right  = view_left + camera_get_view_width(view_camera[0]);
var view_bottom = view_top + camera_get_view_height(view_camera[0]);

