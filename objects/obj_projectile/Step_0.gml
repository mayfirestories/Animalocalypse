

if(dir==0){
	y += ymove
} else if(dir==1){
	x += lengthdir_x(spd,45)
	y += lengthdir_y(spd,45)
	
}else if(dir==2){
	x += lengthdir_x(spd,135)
	y += lengthdir_y(spd,135)
}
range -= 1
if(range = 0){
	instance_destroy()	
}
