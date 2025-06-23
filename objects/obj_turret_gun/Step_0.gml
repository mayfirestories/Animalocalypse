
if(alarm[0]==-1){
	alarm[0] = firerate;		
}
if(alarm[0]==0){
	
	var bullet = Turret_Bullet_Create(x,y,damage,range,knockback,spread,obj_turret_ammo,"Instances");
	
	

	alarm[0] = firerate;
}
