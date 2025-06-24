

//Weapon_Slot[0] is the current weapon equipped
switch (other.buff){
		case "damage":
			show_debug_message(Weapon_Slot[0].damage)
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].damage += other.value;
			}
			show_debug_message(Weapon_Slot[0].damage)
			
		break;
	
		case "range":
		show_debug_message(Weapon_Slot[0].range)
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].range += other.value;
			}
			
			show_debug_message(Weapon_Slot[0].range)
		break;
	
		case "firerate":
		show_debug_message(Weapon_Slot[0].firerate)
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].firerate += other.value;
			}
			
			show_debug_message(Weapon_Slot[0].firerate)
		break;
		case "multishot":
		show_debug_message(Weapon_Slot[0].num)
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].num += other.value;
			}
			
			show_debug_message(Weapon_Slot[0].num)
		break;
		case "penetration":
		show_debug_message(Weapon_Slot[0].pen)
			for(i=0;i<array_length(Weapon_Slot);i++){
				Weapon_Slot[i].pen += other.value;
			}
			
			show_debug_message(Weapon_Slot[0].pen)
		break;

}

//Destroy gate
with(other){
instance_destroy()//Change for later

}


//-------------------------------------------------------