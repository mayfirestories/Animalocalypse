if(hp <= 0){
	obj_player.xp_pool += xpGiven
	instance_destroy()
}

if(place_meeting(x,y,obj_player)){
	if(!obj_player.hit){

	obj_player.hp -= damage
	obj_player.hit = true;
	}
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