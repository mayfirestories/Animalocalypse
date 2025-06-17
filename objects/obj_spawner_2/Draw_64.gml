//obj_spawner
var max_y = 400; // bottom of bar
var min_y = 100; // top of bar (change as needed)
var bar_height = max_y - min_y; //300

var pct = 1 - boss_timer / current_wave.boss_timer;
var current_height = bar_height * pct;

// Drawing from bottom up
draw_rectangle_color(10,min_y + current_height,30,max_y,c_red, c_red, c_red, c_red, false
);
