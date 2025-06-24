if(hp <= 0){
	obj_player.xp_pool += xpGiven
	instance_destroy()
}


//follow player
y+=spd

if(alarm[11] != -1){

	if(image_blend == c_gray){
		image_blend = c_white
	} else {
		image_blend = c_gray
	}
}

if(y > room_height){
	instance_destroy()
}