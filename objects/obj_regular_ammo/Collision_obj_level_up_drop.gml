//Raise the percentage of the gate bonus
if(other.percent<1){
	with(other){ 
		if(percent+other.damageGate>1){
			percent = 1;
		} else percent+= other.damageGate;
	}
} 

with(other){
		//Check Script for Code
	value = weaponBuff(buff,percent);
}

instance_destroy();