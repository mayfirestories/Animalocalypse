x = obj_player.x //follows player
y = obj_player.y
if(active){
	if(alarm[0]==-1){
		alarm[0] = firerate;		
	}
	if(alarm[0]==0){
		var result = array_shift_with_value(obj_chamber_loading.Chamber);
        var next_bullet = result[0];
        obj_chamber_loading.Chamber = result[1]; // update the array
		for (var i = 0; i < num; i++) {
			// Para crear proximas balas en spread ya que la sniper no tiene spread
				var _x = choose(x+i*5,x-i*5) 
				var bullet = Bullet_Create(_x, y+i*10, damage, range, knockback, spread,pen,damageGate, next_bullet, "Instances");
            
        }
		alarm[0] = firerate;
	}
}