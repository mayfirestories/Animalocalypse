if(alarm[0]<0){
	alarm[0] = 500;	
}
if(alarm[0]==0){
		if(global.levelUpQueue){
		global.levelUpQueue--;
	
		var width = view_get_wport(0)
		//Escoges 3 buffs random


		pool = array_shuffle(Buff);

		var gate1 = pool[0];
		var gate2 = pool[1];
		var gate3 = pool[2];
		level[createdGate]=ds_list_create();
		var gate_left = instance_create_layer(width/3,0,"Instances",obj_level_up_drop);
		gate_left.buff= gate1;
		gate_left.level = createdGate
	
		var gate_middle = instance_create_layer(width/2,0,"Instances",obj_level_up_drop);
		gate_middle.buff= gate2;
		gate_middle.level = createdGate
	
		var gate_right = instance_create_layer(width-width/3,0,"Instances",obj_level_up_drop);
		gate_right.buff= gate3;
		gate_right.level = createdGate
	
	
		//Adding the gates in a list to destroy later when picked up by player or when percentage hit max.
		ds_list_add(level[createdGate],gate_left);
		ds_list_add(level[createdGate],gate_middle);
		ds_list_add(level[createdGate],gate_right);
		createdGate++;
	}
}
