

up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

vertical = down-up
horizontal = right-left

xmove = horizontal * xspd
ymove = vertical * yspd
//------------------------------------------CHECK-------------------------------------------------------------
//xspd is not what we want to use to check wall collision. xspd is always 1. We want to use something that is only 1 if you are pressing the D key)
//We are checking the next position we will be in the next step. xspd checks the next pixel even if we arent moving there next step.
if(place_meeting(x+xmove,y, obj_wall)){
	while(!place_meeting(x+sign(xmove),y,obj_wall)){
		x += sign(xmove) 
	}
	xmove = 0
}

if(place_meeting(x,y+ymove, obj_wall)){
	while(!place_meeting(x,y+sign(ymove),obj_wall)){
		y += sign(ymove)
	}
	ymove = 0
}



	y += ymove

	x += xmove

//------------------------------------------CHECK-------------------------------------------------------------
//Fix if comparison
if(alarm[0] = -1){
	alarm[0] = firerate
}

if(alarm[0] == 0){
	var bullet = instance_create_layer(x,y,"Instances",obj_projectile)	
}

if(xp >= xpCap){
	level += 1
	xp = xp-xpCap
	xpCap = 10*level
}
