/// @description Insert description here
// You can write your code in this editor

//globals for amount of fish and collection modifer
global.collectionModifer = 0.01;

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

