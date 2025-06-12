if(hp <= 0){
	instance_destroy()
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

switch (distance_to_object(obj_player)<100) {
	case true:
		image_blend = c_red
		break;
	default:
		image_blend = c_white
		break;
}