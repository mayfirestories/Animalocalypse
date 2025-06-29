
	show_debug_message("Will " + string(other.id)+" hit?");
if (ds_list_find_index(hit_enemies, other.id) == -1) {
	show_debug_message("Hit enemy ID: " + string(other.id));
    ds_list_add(hit_enemies, other.id);
    pen--;
    other.hp -= damage;
    other.y -= knockback;
} else{
	show_debug_message("NO: " + string(other.id)+" didnt hit.");
}
	
	if(pen<0){
		instance_destroy()
	} 
