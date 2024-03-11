/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_grey);
draw_set_alpha(0.7);
var centerX = room_width / 2;
var centerY = room_height / 2;
var padding = 20;

var height = 400;
var width = 200;

var X1 = (centerX - width)
var Y1 = (centerY - height)
var X2 = centerX + width;
var Y2 = centerY + height;

draw_rectangle(X1,Y1,X2,Y2,false);
draw_set_alpha(1);


draw_sprite(scoreMsg, image_index,centerX - 128, centerY - 300)

var xPadding = centerX - 128;
for(var i = 1; i < 6; i++){
	xPadding += 32;
	if(i <= numOfStars){
		draw_sprite(spr_goldfish, image_index, xPadding, centerY - 156);
	} else {
		draw_sprite(spr_fadedFish, image_index, xPadding, centerY - 156);
	}
}

draw_set_color(c_white);

var yPadding = centerY - 96;

var text = "GAME STATS";
draw_text(centerX - (string_width(text) / 2),yPadding, text);
yPadding += string_height(text)

text = $"Rounds Lived: {numOfRounds}";
draw_text(centerX - (string_width(text) / 2), yPadding, text);
yPadding += string_height(text)

text = $"Basic Fish Caught: {global.basicFish}";
draw_text(centerX - (string_width(text) / 2), yPadding, text);
yPadding += string_height(text)

text = $"Salmon Fish Caught: {global.salmonFish}";
draw_text(centerX - (string_width(text) / 2), yPadding, text);
yPadding += string_height(text)

text = $"Cod Fish Caught: {global.codFish}";
draw_text(centerX - (string_width(text) / 2), yPadding, text);
yPadding += string_height(text)



draw_set_color(c_yellow);
text = $"PRESS SPACE TO RETURN TO MAIN MENU";
draw_text(centerX - (string_width(text) / 2), yPadding, text);