lifetime = 120
spd = 5
damage = 3

enemy = instance_nearest(x,y,obj_enemy)
dir = point_direction(x,y,enemy.x, enemy.y)
xmove = lengthdir_x(spd,dir)
ymove = lengthdir_y(spd,dir)