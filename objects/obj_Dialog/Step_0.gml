/// @description Insert description here
// You can write your code in this editor
if(showDialog == false){
	if(dialog.count() <= 0){
		instance_destroy();
		return;
	}
	
	current_dialog = dialog.pop();
	showDialog = true;
} else {
	if(keyboard_check(nextKey)){
		showDialog = false;
		alpha = 0;
	}
}



