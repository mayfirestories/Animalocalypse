
//-----------Key Pressing
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
vertical = down-up

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
horizontal = right-left

space_bar = keyboard_check_pressed(vk_space) //New


//---------------------New
//-------------------------Weapon Handling

if(space_bar){
	if(bag_slot=array_length(Weapon_Bag)-1){
	bag_slot=-1	
	}
	bag_slot++
	for(i=0;i<array_length(Weapon_Bag);i++){
		if(instance_exists(Weapon_Bag[i])){
			instance_destroy(Weapon_Bag[i])
		}
	}
	
	Weapon_Slot[0] = instance_create_layer(x,y,"Instances",Weapon_Bag[bag_slot])
}



//-----------------Weapon Handling End


//-------------Player Movement
//-----------Player Movement and Horizontal Collision

xmove = horizontal * xspd
ymove = vertical * yspd
if(place_meeting(x + xmove, y, obj_wall)){
	while(!place_meeting(x + sign(xmove), y, obj_wall)){
		x += sign(xmove)
	}
	xmove = 0
}
x += xmove
 
//-----------Player Movement and Vertical Collision
if(place_meeting(x, y + ymove, obj_wall)){
	while(!place_meeting(x, y + sign(ymove), obj_wall)){
		y += sign(ymove)
	}
	ymove = 0
}
y += ymove

//-------------Player Movement End



//------------Level & Exp
if(place_meeting(x,y,obj_exp)){
	var xp_orb = instance_nearest(x,y,obj_exp)
	xp += xp_orb.xp
	instance_destroy(xp_orb)
}
if(xp >= xpCap){
	level += 1
	xp = xp-xpCap
	xpCap = 10*level
}
//------------------Damage Logic

if(hit ==true){
	if(alarm[1]==-1){
		alarm[1] = 20
	}
	if(alarm[0]==0){
		hit = false	
	}
}


if(hp<1){
room_restart()	
	
}
