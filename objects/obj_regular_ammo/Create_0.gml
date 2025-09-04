// Bullet Create Event

// Set up the bullet's lifetime, speed, and damage
range = 0;  //Very High
spd = 20;         
damage = 0;    //Very High
pen = 0;
knockback = 10; //Very High
//damage the bullet does to the gate. The increase is always until it gets to 1
damageGate = 0.05;
<<<<<<< Updated upstream
dir = 90;
boing = 0;
=======
if(instance_exists(obj_enemy)){
enemyL = instance_nearest(x,y,obj_enemy);

dir = point_direction(x,y,enemyL.x,enemyL.y)
show_debug_message(dir)
} else{
dir = 90;	
}
>>>>>>> Stashed changes
sprite = spr_regular_ammo
name = "Regular";



//TO check which enemies have been hit
hit_enemies = ds_list_create()
