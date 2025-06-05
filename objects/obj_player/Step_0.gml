
//-----------Movement Logic
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

horizontal = right-left
vertical = down-up

xmove = horizontal *xspd
ymove = vertical *yspd

//-----Horizontal Wall Collision
if(place_meeting(x+xmove,y, obj_wall)){
	while(!place_meeting(x+sign(xmove),y,obj_wall)){
		x += sign(xmove)
	}
	xmove = 0
}

//-----Vertical Wall Collision

if(place_meeting(x,y+ymove, obj_wall)){
	while(!place_meeting(x,y+sign(ymove),obj_wall)){
		y += sign(ymove)
	}
	ymove = 0
}


	x += xmove
	y += ymove
	
//------------Firerate
//------------------------------------------CHECK-------------------------------------------------------------
//Fix if comparison
if(alarm[0] = -1){
	alarm[0] = firerate
}

if(alarm[0] == 0){
	var bullet = instance_create_layer(x,y,"Instances",obj_projectile)	
}
//------------Level & Exp
if(xp >= xpCap){
	level += 1
	xp = xp-xpCap
	xpCap = 10*level
}
