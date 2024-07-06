/// @description Insert description here
// You can write your code in this editor
application_surface_draw_enable(true)

numOfRounds = global.wave;
numOfFish = global.basicFish + global.codFish + global.salmonFish;


numOfStars = 0;

if(numOfRounds >= 5){
	numOfStars += 3;
}
else {
	numOfStars += numOfRounds;
}

if(numOfFish >= 50){
	numOfStars += 2;
}


switch(numOfStars){
	case 5:
		scoreMsg = spr_score_5;
	break;
	case 4:
		scoreMsg = spr_score_4;
	break;
	case 3:
		scoreMsg = spr_score_3;
	break;
	case 2:
		scoreMsg = spr_score_2;
	break;
	case 1:
		scoreMsg = spr_score_1;
	break;
	
	default:
		scoreMsg = spr_score_5;
}