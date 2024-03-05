/// @description Insert description here
// You can write your code in this editor
global.collectionModifer = 0.01;
global.basicFish = 0;
global.codFish = 0;
global.salmonFish = 0;

enum States{
	Fishing,
	Attacking,
	Regular, // default is a keyword :(
}


state = States.Regular;
fishingTarget = noone;

basicFish = 0;
codFish = 0;
salmonFish = 0;

fishing = false;


image_speed = 0;
