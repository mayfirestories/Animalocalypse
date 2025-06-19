if(hp <= 0){
	obj_player.xp_pool += xpGiven
	instance_destroy()
}
if(place_meeting(x,y,obj_turret_ammo)){
	var bullet = instance_nearest(x,y,obj_turret_ammo)
	hp -= bullet.damage
	x += lengthdir_x(bullet.knockback,bullet.dir)
	y += lengthdir_y(bullet.knockback,bullet.dir)
	instance_destroy(bullet)
}
if(place_meeting(x,y,obj_regular_ammo)){
	var bullet = instance_nearest(x,y,obj_regular_ammo)
	hp -= bullet.damage
	x += lengthdir_x(bullet.knockback,bullet.dir)
	y += lengthdir_y(bullet.knockback,bullet.dir)
	instance_destroy(bullet)
}
if(place_meeting(x,y,obj_player)){
	if(!obj_player.hit){

	obj_player.hp -= damage
	obj_player.hit = true;
	}
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