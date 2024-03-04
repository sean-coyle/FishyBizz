/// @description Insert description here
// You can write your code in this editor

if(y >= obj_minigame.lineY2){
	
	vspeed = -randSpeed;
}

if(y <= obj_minigame.lineY1){
	vspeed = randSpeed;
}

if(keyboard_check(vk_space)){
	if(y >= obj_minigame.rectY - 10 and y <= obj_minigame.rectY + obj_minigame.rectangleHeight + 10){
		//if player is in the goal spot fishing mulitpler is upped from base
		obj_player.collection_rate = obj_player.collection_rate *  2;
		src_minigame(obj_player.x, obj_player.y, layer);
	} else {
		obj_player.collection_rate = obj_player.base_collection_rate;
	}
}





