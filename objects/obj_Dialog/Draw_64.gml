/// @description Insert description here
// You can write your code in this editor
if(showDialog == true){
	var msg = current_dialog.msg;
	var dialogColor = current_dialog.color;
	var rectX = string_width(msg) / 2
	draw_set_alpha(0.5);
	draw_rectangle_color(x + rectX + 50, y - 20, x - rectX - 50, y + 40, c_grey, c_grey, c_grey, c_grey, false);
	draw_set_alpha(1);
	draw_text_color(x, y + 10, msg, dialogColor, dialogColor, dialogColor, dialogColor, 1);
	draw_text_color(x + rectX , y + 30, "PRESS SPACE", c_yellow, c_yellow, c_yellow, c_yellow, 1);
}



