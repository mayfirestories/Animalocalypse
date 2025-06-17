





x = lerp(x, target_x, 0.1);
y = lerp(y, target_y, 0.1);



next.x = x;
next.y = y;

if(y<-room_height-10){ // Try changing instance_destroy. 
	instance_destroy(next);
	instance_destroy();	
		
}