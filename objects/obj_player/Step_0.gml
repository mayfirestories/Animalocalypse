
//-----------Movement Logic
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
vertical = down-up

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
horizontal = right-left

xmove = horizontal * xspd
ymove = vertical * yspd

//-----------Player Movement and Horizontal Collision
if(place_meeting(x + xmove, y, obj_wall)){
	while(!place_meeting(x + sign(xmove), y, obj_wall)){
		x += sign(xmove)
	}
	xmove = 0
}
x += xmove

//-----------Player Movement and Vertical Collision
if(place_meeting(x, y + ymove, obj_wall)){
	while(!place_meeting(x, y + sign(ymove), obj_wall)){
		y += sign(ymove)
	}
	ymove = 0
}
y += ymove

if(alarm[0] == -1){
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
