x = obj_player.x //follows player
y = obj_player.y
if(active){
	if(alarm[0]==-1){
		alarm[0] = firerate;		
	}
	if(alarm[0]==0){
		var next_bullet = obj_bullet_type.Chamber[0];
		for (var i = 0; i < num; i++) {
			// Para crear proximas balas en spread ya que la sniper no tiene spread
				var _x = choose(x+i*5,x-i*5) 
				 var bullet = Bullet_Create(x, y, damage, range, knockback, spread,pen,bounce,damageGate, next_bullet, "Instances");
            
        }
		alarm[0] = firerate;
	}
}