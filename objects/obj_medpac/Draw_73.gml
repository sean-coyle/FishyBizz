/// @description Insert description here
// You can write your code in this editor
if(showInfo){
	var msg = self.purchase_msg;
	draw_set_font(fn_store);
	var rectX = string_width(msg) / 2
	draw_set_alpha(0.5);
	draw_rectangle_color(x + rectX + 50, y - 20, x - rectX - 50, y + 40, c_grey, c_grey, c_grey, c_grey, false);
	draw_set_alpha(1);
	draw_text_color(x, y - 10, self.name, c_white, c_white, c_white, c_white, 1);
	draw_text_color(x, y + 10, msg, c_white, c_white, c_white, c_white, 1);
	draw_text_color(x , y, self.desc, c_white, c_white, c_white, c_white, 1);
	
	if(multiple_purchase){
		draw_text_color(x , y + 30, "(Can buy more than once)" , c_red	, c_red, c_red, c_red, 1);
	}
	
	if(canPurchase){
		draw_text_color(x , y + 20, "E TO BUY" , c_red	, c_red, c_red, c_red, 1);
	}

}


	



