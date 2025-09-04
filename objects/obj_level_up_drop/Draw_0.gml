draw_self();
draw_sprite(spr_gate,0,x,y)
if(buff=="multishot"||buff=="penetration"||buff=="bounce"){
	draw_text(x-sprite_width,y,string(buff)+": "+string(value));
} else{
draw_text(x-sprite_width,y,string(buff)+": "+string(value)+"%");
}
