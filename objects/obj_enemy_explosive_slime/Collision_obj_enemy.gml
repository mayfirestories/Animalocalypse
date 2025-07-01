if(sprite_index ==deathAnimation){
	if(ds_list_find_index(enemyHit,other.id)==-1){
	ds_list_add(enemyHit,other.id);
	other.hp -= explosionDamage; 
	}
	
	
}