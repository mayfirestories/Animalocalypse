//obj_spawner
var max_y = 400; // bottom of bar
var min_y = 100; // top of bar (change as needed)
var bar_height = max_y - min_y; //300

//Setting Variables para el viewport 0
var vp_x = view_get_xport(0);
var vp_y = view_get_yport(0);
var vp_w = view_get_wport(0);
var vp_h = view_get_hport(0);

var pct = 1 - boss_timer / current_wave.boss_timer;
var current_height = bar_height * pct;

// Drawing from bottom up
draw_rectangle_color(vp_w - 80,min_y + current_height,vp_w - 50,max_y,c_red, c_red, c_red, c_red, false)

//



draw_text(vp_w - 100, 10, "Wave " + string(global.nextCounter) + "/" + string(waveCount));
