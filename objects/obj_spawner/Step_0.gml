xlocation = irandom_range(260,1060)


if(instance_number(obj_enemy)<3){
	instance_create_layer(xlocation,0,"Instances",obj_enemy)
}