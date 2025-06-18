// Optional: draw the player sprite first
draw_self();

// Position and size of the health bar
var bar_x = x - 32;
var bar_y = y - 50;
var bar_width = 64;
var bar_height = 8;

// Health bar colors
var back_color = c_gray;
var health_color = c_red;

// Draw background bar
draw_set_color(back_color);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw current health (foreground)
var health_width = bar_width * (xp_displayed / xpCap);
show_debug_message(xp_displayed)
draw_set_color(health_color);
draw_rectangle(bar_x, bar_y, bar_x + health_width, bar_y + bar_height, false);

// Reset color to default
draw_set_color(c_white);
