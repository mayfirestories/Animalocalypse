y+=spd;
//Collision with Player--------------------------------
//Alarm to check player collision every 20 steps
if(alarm[0]==-1){ 
	alarm[0] = 20;
}
//Collision Effect
if(alarm[0]<=0){
	if(place_meeting(x,y,obj_player)){
		instance_destroy()//Change for later
	}
}
//-------------------------------------------------------