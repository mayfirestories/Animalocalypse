
if(alarm[0]==-1){
	alarm[0] = firerate;		
}
if(alarm[0]==0){
	for (var i = 0; i < num; i++) {
		
		var bullet = Turret_Bullet_Create(x,y,damage,range,knockback,spread,pen,obj_turret_ammo,"Instances");
		if(obj_player.x<x){
		bullet.dir =bullet.dir+180 ;	
		}
	}
	

	alarm[0] = firerate;
}
