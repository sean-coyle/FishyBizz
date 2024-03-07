/// @description Insert description here
// You can write your code in this editor

//want to change image based on direction of object
// if y is negative y < prevY, pos y> prevY same for x
if(y > prevY){
	sprite_index = spr_merchant_down;
} else if(y < prevY){
	sprite_index = spr_merchant_up;
}

if(x > prevX){
	sprite_index = spr_merchant_right;
} else if(x < prevX){
	sprite_index = spr_merchant_left;
}

//update prev x y
prevX = x;
prevY = y;

//flag for knowing if its talking, player will change this 
if(talking){
	path_speed = 0;
} else {
	path_speed  = 1;
}


//Logic for tutorial
if(room == TutorialArea){
	if(global.basicFish > 0 and self.dialog != dialog_MerchantTutorial3){
		dialog = dialog_MerchantTutorial2;
	}
}