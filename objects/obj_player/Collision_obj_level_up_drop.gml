

//Weapon_Slot[0] is the current weapon equipped
switch (other.buff){
		case "damage":
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].damage *= other.value;
			}
			
		break;
	
		case "range":
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].range *= other.value;
			}
			
		break;
	
		case "firerate":
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].firerate *= other.value;
			}

		break;
		case "multishot":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].num += other.value;
			}
			

		break;
		case "penetration":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].pen += other.value;
			}

		break;
		case "bounce":

			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].boing += other.value;
			}

		break;

}

//Destroy gate
// Destroy all gates from the previous level (if any)
var gateLevel = obj_level_up_CONTROLLER.level[other.level];

	var old_list = gateLevel;
	for (var i = 0; i < ds_list_size(old_list); i++) {
		var gate = old_list[| i];
		if (instance_exists(gate)) {
			with (gate) instance_destroy();
		}
	}
	ds_list_destroy(old_list);



//-------------------------------------------------------