/// @description Insert description here
// You can write your code in this editor
if(vspeed <=1 and vspeed > 0)
vspeed = 2;

if(y >= obj_minigame.lineY2){
	vspeed = -randSpeed;
}

if(y <= obj_minigame.lineY1){
	vspeed = randSpeed;
}

if(keyboard_check(vk_space)){
	if(y >= obj_minigame.rectY - 10 and y <= obj_minigame.rectY + obj_minigame.rectangleHeight + 10){
		//if player is in the goal spot fishing mulitpler is upped from base
		global.collectionModifer *= 2;
		src_minigame(obj_player.x, obj_player.y, layer);
	} else {
		global.collectionModifer = 1;
	}
}





