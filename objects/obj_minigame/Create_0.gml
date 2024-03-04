/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
rectangleWidth = 10;
rectangleHeight = round(random(80));

rectX = obj_player.x + 60; 
rectY = obj_player.y - rectangleHeight / 2;

lineX = rectX + 5;
lineY1 =  rectY - 100;
lineY2 = rectY + 150;

instance_create_layer(lineX, lineY1, layer, obj_bobble);
obj_bobble.depth -= 1;







