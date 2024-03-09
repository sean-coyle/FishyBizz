/// @description Insert description here
// You can write your code in this editor
if room == MainMenu{
	if keyboard_check_pressed(vk_space){
		if(!global.finishedTutorial){
			global.finishedTutorial = true;
			room_goto(TutorialArea);
		} else {
			room_goto(FishingArea);
		}
	}
}






