
if(alarm[0]==-1){
	alarm[0] = firerate;		
}
if(alarm[0]==0){
	var bullet = instance_create_layer(x,y,"Instances",obj_turret_ammo)
	alarm[0] = firerate;
}
