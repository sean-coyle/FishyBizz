/// @description Insert description here
// You can write your code in this editor
//prev x y location to help figure out what direction object is facing to change sprites
prevX = x;
prevY = y;

talking = false;
dialog = dialog_Merchant1;
path_start(path_merchant, 2, path_action_continue, false);
if(room == TutorialArea){
	dialog = dialog_MerchantTutorial1;
	keyboard_key_press(ord("E"));
	keyboard_key_release(ord("E"));
}



