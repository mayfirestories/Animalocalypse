if(hp <= 0){
	instance_destroy()
}
if(place_meeting(x,y,obj_projectile)){
	var bullet = instance_nearest(x,y,obj_projectile)
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