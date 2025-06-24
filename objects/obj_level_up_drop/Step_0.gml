y+=spd;

//This code will happen once after create. 
if(once){
once = false;
	switch (buff){
		case "damage":
			value = round(2* percent)
		break;
	
		case "range":
			value = round(50* percent);
		break;
	
		case "firerate":
			value = round(-10* percent);
		break;
		
		case "multishot":
			value = round(2*percent);
		break;
		
		case "penetration":
			value = round(2*percent);
		break;
	}
}

if(percent>=1){
	var Weapon_Slot =obj_player.Weapon_Slot;
	switch (buff){
		case "damage":
	
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].damage += value;
			}

			
		break;
	
		case "range":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].range += value;
			}
			

		break;
	
		case "firerate":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].firerate += value;
			}
			

		break;
		case "multishot":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].num += value;
			}
			

		break;
		case "penetration":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].pen += value;
			}

		break;

}
	
	
	
	
	
	
var gateLevel = obj_level_up_CONTROLLER.level[level];

if (gateLevel != undefined) {
	var old_list = gateLevel;
	for (var i = 0; i < ds_list_size(old_list); i++) {
		var gate = old_list[| i];
		if (instance_exists(gate)) {
			with (gate) instance_destroy();
		}
	}
	ds_list_destroy(old_list);
}	
}
