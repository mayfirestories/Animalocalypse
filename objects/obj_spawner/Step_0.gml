xlocation = irandom_range(260,1060)
scaler = obj_timer.timer_seconds / 5;

if(instance_number(obj_enemy)<1*scaler){
	instance_create_layer(xlocation,0,"Instances",obj_enemy)
}