
xlocation = irandom_range(0,room_width)
ylocation = irandom_range(0,room_height)

if(instance_number(obj_enemy)<3){
	instance_create_layer(xlocation,ylocation,"Instances",obj_enemy)
}