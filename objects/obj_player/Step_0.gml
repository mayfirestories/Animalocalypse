xspd = 1
yspd = 1

up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
vertical = up-down

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
horizontal = left-right

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

if(place_meeting(x,y+yspd, obj_wall)){
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

if(vertical != 0){
	y -= vertical * yspd
}
if(horizontal != 0){
	x -= horizontal * xspd
}

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
