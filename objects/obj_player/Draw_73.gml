/// @description Insert description here
// You can write your code in this editor
with(fishingTarget){
	draw_set_color(c_red);
	draw_circle(x,y,10,true);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center)
	draw_text(x,y, "E");
}

with(talkingTarget){
	draw_set_color(c_red);
	draw_circle(x,y - 32,10,true);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center)
	draw_text(x,y - 32, "E");
}

draw_set_color(c_white);