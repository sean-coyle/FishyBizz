/// @description Insert description here
// You can write your code in this editor
with(fishingTarget){
	draw_set_color(c_red);
	draw_circle(x,y,10,true);

	
	draw_text(x-4,y-10, "E");
}

with(talkingTarget){
	draw_set_color(c_red);
	draw_circle(x,y - 32,10,true);

	
	draw_text(x-4,y - 42, "E");
}


draw_set_color(c_white);