if(hp <= 0){
	obj_player.xp_pool += xpGiven
	instance_destroy()
}


y += spd

if(place_meeting(x + xmove, y, obj_wall)){
	while(!place_meeting(x + sign(xmove), y, obj_wall)){
		x += sign(xmove)
	}
	xmove = -xmove
}
x += xmove

switch (distance_to_object(obj_player)<100) {
	case true:
		image_blend = c_navy
		break;
	default:
		image_blend = c_white
		break;
}

// Get the current view bounds (assuming you're using view 0)
var view_left   = camera_get_view_x(view_camera[0]);
var view_top    = camera_get_view_y(view_camera[0]);
var view_right  = view_left + camera_get_view_width(view_camera[0]);
var view_bottom = view_top + camera_get_view_height(view_camera[0]);

// Check if the instance is outside of the view
if (x < view_left - sprite_width || x > view_right + sprite_width ||
    y < view_top - sprite_height || y > view_bottom + sprite_height) {
    instance_destroy();
}