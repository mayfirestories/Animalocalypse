if(hp <= 0){
	instance_destroy()
}
if(place_meeting(x,y,obj_projectile)){
	hp -= obj_projectile.damage
	var bullet = instance_nearest(x,y,obj_projectile)
	instance_destroy(bullet)
}
//Code to follow player can go here and can be done with two lines