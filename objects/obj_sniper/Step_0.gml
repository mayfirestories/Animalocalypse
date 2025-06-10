x = obj_player.x //follows player
y = obj_player.y
if(active){ //This part of the code works if the sniper is on
	if(alarm[0]==-1){
		alarm[0] = firerate;		
	}
	if(alarm[0]==0){
		for(i = 0;i<num;i++){
			var bullet = instance_create_layer(x,y,"Instances",obj_projectile);
			bullet.damage = damage;
			bullet.range = range;
			bullet.knockback = knockback;
			bullet.dir = i;
		}
	}
}