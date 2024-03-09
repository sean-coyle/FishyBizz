/// @description Insert description here
// You can write your code in this editor
if(room == MainMenu){
	if(!playingMusic){
		audio_stop_all();
		audio_play_sound(snd_mainmenu, 1, true);
		playingMusic = true;
	} 
}

if(room == ScoreBoard){
	if(playingMusic){
		audio_stop_all();
		audio_play_sound(snd_endmusic, true, false);
		playingMusic = false;
	}
}




