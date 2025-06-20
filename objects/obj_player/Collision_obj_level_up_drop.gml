

//Weapon_Slot[0] is the current weapon equipped
switch (other.buff){
		case "damage":
			show_debug_message(Weapon_Slot[0].damage)
			Weapon_Slot[0].damage += other.value;
			show_debug_message(Weapon_Slot[0].damage)
			
		break;
	
		case "range":
		show_debug_message(Weapon_Slot[0].range)
			Weapon_Slot[0].range += other.value;
			show_debug_message(Weapon_Slot[0].range)
		break;
	
		case "firerate":
		show_debug_message(Weapon_Slot[0].firerate)
			Weapon_Slot[0].firerate += other.value;
			show_debug_message(Weapon_Slot[0].firerate)
		break;

}

//Destroy gate
with(other){
instance_destroy()//Change for later

}


//-------------------------------------------------------