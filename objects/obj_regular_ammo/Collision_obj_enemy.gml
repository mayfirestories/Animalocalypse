
if (ds_list_find_index(hit_enemies, other.id) == -1) {
    ds_list_add(hit_enemies, other.id);
	if(bounce>0&&!other.penetrable){
		bounce--;
		boing = true;
	
	} else{
	
		pen--;
		if(other.penetrable&&bounce<0){
		
			pen = -1;	
		}
		
	}
    other.hp -= damage;
    other.y -= knockback;
	//
	
} else{
	//show_debug_message("NO: " + string(other.id)+" didnt hit.");
	}
	
	
	if(pen<0&&!boing){
	
		instance_destroy()
	} 
	if(boing){
		
		//simple redirect 
		dir = point_direction(other.x,other.y,x,y);
		//get out of the loop
		boing = false;
	}
	
	
