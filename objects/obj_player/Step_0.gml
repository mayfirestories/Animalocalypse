
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


// SMOOTHLY INCREASE XP
// Xp is added to the pool and slowly passes to the Player
if (0 < xp_pool) {
	
    xp += 1;
	xp_pool-=1
}
//When xp reaches xpCap, trigger level up and reset xp which keeps get xp from the pool
if(xp>=xpCap){
	level += 1;
	global.levelUpQueue++; 
	xpCap*=level
	xp=0;
}
//----------------------------------------------------------------------



//--------------------------------------------------------------------------------------
if(place_meeting(x + xmove, y, obj_drop_reward)){
	//random powerUp?
}
//--------------------------------------------------------------------------------------

