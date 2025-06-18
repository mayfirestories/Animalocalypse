
//-----------Key Pressing

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
horizontal = right-left





//-----------------Weapon Handling End


//-------------Player Movement
//-----------Player Movement and Horizontal Collision

xmove = horizontal * xspd

if(place_meeting(x + xmove, y, obj_wall)){
	while(!place_meeting(x + sign(xmove), y, obj_wall)){
		x += sign(xmove)
	}
	xmove = 0
}
x += xmove
 
//-----------Player Movement and Vertical Collision


//-------------Player Movement End



//------------Level & Exp-------------------------------------------
//Making drops
if(place_meeting(x,y,obj_exp)){
	var xp_orb = instance_nearest(x,y,obj_exp)
	xp += xp_orb.xp
	instance_destroy(xp_orb)
}// 1. LEVEL UP (handle real XP first)
if (xp >= xpCap) {
    level += 1;
    xp -= xpCap;
    xpCap = 10 * level;
    show_message(string(xpCap)); // Just for debugging
}

// 2. SMOOTHLY INCREASE DISPLAYED XP
if (xp_displayed < xp) {
    xp_displayed += level;
	if (xp_displayed > xp) {
        xp_displayed = xp;
    }
    
}
// Prevent overshooting real XP
    if (xp_displayed > xp) {
        xp_displayed = 0;
    }
// 3. RESET DISPLAY WHEN BAR IS FULLY DRAWN

//----------------------------------------------------------------------

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

if(place_meeting(x + xmove, y, obj_drop_reward)){
	//random powerUp?
}
