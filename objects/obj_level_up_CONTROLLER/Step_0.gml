if(global.levelUpQueue){
	global.levelUpQueue--;
	
	var width = view_get_wport(0)
	//Escoges 3 buffs random

	show_debug_message(Buff)
	pool = array_shuffle(Buff);
	show_debug_message(pool)
	var gate1 = pool[0];
	var gate2 = pool[1];
	var gate3 = pool[2];
	
	var gate_left = instance_create_layer(width/3,0,"Instances",obj_level_up_drop);
	gate_left.buff= gate1;
	var gate_middle = instance_create_layer(width/2,0,"Instances",obj_level_up_drop);
	gate_middle.buff= gate2;
	var gate_right = instance_create_layer(width-width/3,0,"Instances",obj_level_up_drop);
	gate_right.buff= gate3;
}