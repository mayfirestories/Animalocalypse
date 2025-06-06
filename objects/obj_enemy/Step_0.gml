if(hp <= 0){
	instance_create_layer(x,y,"Instances",obj_exp)
	instance_destroy()
}
if(place_meeting(x,y,obj_projectile)){
	hp -= obj_projectile.damage
	var bullet = instance_nearest(x,y,obj_projectile)
	instance_destroy(bullet)
}

x += sign(obj_player.x - x)
y += sign(obj_player.y - y)

switch (distance_to_object(obj_player)<100) {
	case true:
		image_blend = c_red
		break;
	default:
		image_blend = c_white
		break;
}