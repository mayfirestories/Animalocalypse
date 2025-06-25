xlocation = irandom_range(260,1060)
scaler = obj_timer.timer_seconds / 5;

enemy_choice = irandom_range(1,2) //Eventually expand range 
if(enemy_choice == 1){
	if(instance_number(obj_enemy)<1*scaler){
		instance_create_layer(xlocation,0,"Instances",obj_enemy_line_slime)
	}
} else {
	if(instance_number(obj_enemy)<1*scaler){
		instance_create_layer(xlocation,0,"Instances",obj_zigzag_enemy)
	}
}

if( int64(scaler % 3) == 0 && instance_number(obj_boss_enemy)<1 && obj_timer.timer_seconds > 10){
	instance_create_layer(xlocation,0,"Instances",obj_boss_enemy)
}

