up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
vertical = up-down

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
horizontal = left-right

if(vertical != 0){
	y -= vertical
}
if(horizontal != 0){
	x -= horizontal
}
if(alarm[0] = -1){
	alarm[0] = 300
}
if(alarm[0] == 0){
	instance_create_layer(x,y,"Instances",obj_projectile)	
}
