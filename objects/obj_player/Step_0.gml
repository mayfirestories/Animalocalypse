
//-----------Movement Logic
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
//You want Vertical to be -1 when you press up and 1 when you press down
vertical = up-down

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
//You want horizontal to be 1 when you press right and -1 when you press left
horizontal = left-right

//-----Horizontal Wall Collision
//------------------------------------------CHECK-------------------------------------------------------------
//xspd is not what we want to use to check wall collision. xspd is always 1. We want to use something that is only 1 if you are pressing the D key)
//We are checking the next position we will be in the next step. xspd checks the next pixel even if we arent moving there next step.
//Try to combine the next two ifs
if(place_meeting(x+xspd,y, obj_wall)){
	while(!place_meeting(x+1,y,obj_wall)){
		x += 1
	}
	xspd = 0
}

if(place_meeting(x-xspd,y, obj_wall)){
	while(!place_meeting(x-1,y,obj_wall)){
		x -= 1
	}
	xspd = 0
}
//-----Vertical Wall Collision
//Try to combine the next two ifs
if(place_meeting(x,y+yspd, obj_wall)){
	//Try using sign() function. It takes a number and returns -1 or 1 depending on the given number sign.
	while(!place_meeting(x,y+1,obj_wall)){
		y += 1
	}
	yspd = 0
}

if(place_meeting(x,y-yspd, obj_wall)){
	while(!place_meeting(x,y-1,obj_wall)){
		y -= 1
	}
	yspd = 0
}

//the next two "If" are not doing anything. 
//Having -= for moving logic may be confusing for future development of the code. Have it work with +=
if(vertical != 0){
	y -= vertical * yspd
}
if(horizontal != 0){
	x -= horizontal * xspd
}
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
