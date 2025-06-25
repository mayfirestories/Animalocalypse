// Bullet Create Event

// Set up the bullet's lifetime, speed, and damage
range = 0;  //Very High
spd = 20;         
damage = 0;    //Very High
pen = 0;
knockback = 10; //Very High
//damage the bullet does to the gate. The increase is always until it gets to 1
damageGate = 0.05;
dir = 90;
boing = 0;
sprite = spr_regular_ammo
name = "Regular";



//TO check which enemies have been hit
hit_enemies = ds_list_create()
