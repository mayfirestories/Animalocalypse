x = obj_player.x //follows player
y = obj_player.y
if(active){ //This part of the code works if the sniper is on
	if(alarm[0]==-1){
		alarm[0] = firerate;		
	}
	if(alarm[0]==0){
		for(i = 0;i<num;i++){
			var bullet = Bullet_Create(x,y,damage,range,knockback,spread,obj_regular_ammo,"Instances")
			
			bullet.image_blend = color;
			alarm[0] = firerate;
		}
	}
}