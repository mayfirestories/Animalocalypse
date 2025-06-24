
	x += lengthdir_x(spd,dir)
	y += lengthdir_y(spd,dir)
range -= 1
if(range = 0){
	instance_destroy()	
}
image_angle = dir;
