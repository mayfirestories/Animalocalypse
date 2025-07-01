x = obj_player.x
y = obj_player.y

if(active){
	if(alarm[0]==-1){
		alarm[0] = firerate;		
	}
	if(alarm[0]==0){
		
        var next_bullet = obj_bullet_type.Chamber[0];
        
		for (var i = 0; i < num; i++) {
            
				 var bullet = Bullet_Create(x, y, damage, range, knockback, spread,pen,bounce,damageGate, next_bullet, "Instances");
				
        }
		alarm[0] = firerate;
	}
}


//Only happens with level up
if(levelGate){
	
	levelGate = false;
	firerate += obj_player.firerate
	damage += obj_player.damage
	range += obj_player.range

}