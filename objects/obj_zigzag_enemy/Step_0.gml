if(hp <= 0){
	obj_player.xp_pool += xpGiven
	instance_destroy()
}

//Y Movement -------------------------------------------
// It only moves in the first half of the animation
if(image_index>3){ 
	y+=0;
} else{
	y += spd 
}
//-------------------------------------------------------

//X Movement ----------------------------------------------------------------

//Wall Collision
if(place_meeting(x + xmove, y, obj_enemy_wall)){
	while(!place_meeting(x + sign(xmove), y, obj_enemy_wall)){
		x += sign(xmove)
	}
	xmove = -xmove
}
//---------------


if(image_index>3){ 
	x+=0;
} else{
x += xmove
}
//-----------------------------------------------------------------------------------

// Get the current view bounds (assuming you're using view 0)------------

var view_left   = camera_get_view_x(view_camera[0]);
var view_top    = camera_get_view_y(view_camera[0]);
var view_right  = view_left + camera_get_view_width(view_camera[0]);
var view_bottom = view_top + camera_get_view_height(view_camera[0]);

// Check if the instance is outside of the view
if (x < view_left - abs(sprite_width) || x > view_right + abs(sprite_width) ||
    y < view_top - abs(sprite_height) || y > view_bottom + abs(sprite_height)) {
    instance_destroy();

}
//-----------------------------------------------------------------------

//Orientation------------------------------
if(xmove!=0){
image_xscale = sign(xmove);
}
//-----------------------------------------