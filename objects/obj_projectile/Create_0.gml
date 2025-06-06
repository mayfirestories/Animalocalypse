
// Bullet Create Event

// Set up the bullet's lifetime, speed, and damage
lifetime = 120;  
spd = 5;         
damage = 3;      

// Find the nearest enemy
enemy = instance_nearest(x, y, obj_enemy);

// Calculate the direction towards the enemy
var angle = point_direction(x, y, enemy.x, enemy.y);

// Normalize the movement direction
xmove = lengthdir_x(spd, angle);
ymove = lengthdir_y(spd, angle);

lifetime = 120
spd = 5
damage = 3

enemy = instance_nearest(x,y,obj_enemy)
dir = point_direction(x,y,enemy.x, enemy.y)
xmove = lengthdir_x(spd,dir)
ymove = lengthdir_y(spd,dir)

