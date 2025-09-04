
//-----------Key Pressing

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
vertical = down-up
horizontal = right-left





//-----------------Weapon Handling End


//-------------Player 
xmove = horizontal * xspd
ymove = vertical * yspd
//-----------Player Movement and Horizontal Collision



if(place_meeting(x + xmove, y, obj_wall)){
	while(!place_meeting(x + sign(xmove), y, obj_wall)){
		x += sign(xmove)
	}
	xmove = 0
}
x += xmove
 
//-----------Player Movement and Vertical Collision

if(place_meeting(x, y + ymove, obj_wall)){
	while(!place_meeting(x , y+ sign(ymove), obj_wall)){
		y += sign(ymove)
	}
	ymove = 0
}
y += ymove
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

