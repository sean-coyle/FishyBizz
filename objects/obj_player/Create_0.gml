/// @description Insert description here
// You can write your code in this editor
global.collectionModifer = 0.01;
global.basicFish = 100;
global.codFish = 25;
global.salmonFish = 25;

enum States{
	Fishing,
	Talking,
	Regular, // default is a keyword :(
}


state = States.Regular;
fishingTarget = noone;
talkingTarget = noone;
storeTarget = noone;

canPurchase = false;


basicFish = 0;
codFish = 0;
salmonFish = 0;

fishing = false;
hits = 0;

image_speed = 0;
