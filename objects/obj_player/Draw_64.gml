
//Use Contructor to draw equipped item
draw_sprite(Weapons[bag_slot].spr ,0,100,100)
draw_text(150,100,Weapons[bag_slot].name)

/*
var space = 20;
for(i = 0;i<array_length(Chamber);i++){
	draw_sprite(obj_chamber_loading Chamber[i].sprite_index ,0,120,y+space*(i));
	
}
