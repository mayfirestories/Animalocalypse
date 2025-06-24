//Raise the percentage of the gate bonus
if(other.percent<1){
	with(other){ 
		if(percent+other.damageGate>1){
			percent = 1;
		} else percent+= other.damageGate;
	}
} 

with(other){
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
show_debug_message(other.percent)
instance_destroy();