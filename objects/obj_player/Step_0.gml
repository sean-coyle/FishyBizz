/// @description player object
// You can write your code in this editor
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);

if hp <= 0 {
	global.basicFish = round(basicFish);
	global.salmonFish = round(salmonFish);
	global.codFish = round(codFish);
	room_goto(ScoreBoard);
	instance_destroy(self);
}

if (state == States.Regular){
	
	/*
	MOVEMENT
	xRight - checks right movement input
	xLeft - checks left movement input
	yDown - checks Down movement input
	yUp - checks up movement input */
	var xRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var xleft = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var yUp =  keyboard_check(ord("W")) or keyboard_check(vk_up);
	var yDown = keyboard_check(ord("S")) or keyboard_check(vk_down);

	if(xRight) { 
		x+= player_speed;
		image_speed = 2
		sprite_index  = spr_player_walk;
		image_xscale = -1;
		
	} 
	if (xleft) { 
		x-= player_speed; 
		sprite_index  = spr_player_walk;
		image_xscale = 1;
	}
	if (yUp) { 
		y-= player_speed; 
		image_speed = 2
		sprite_index  = spr_player_walk_up;
	}
	if (yDown) { 
		y+= player_speed; 
		image_speed = 2
		sprite_index  = spr_player_walk_down;
	}
	
	
	//targets
	fishingTarget = noone;
	storeTarget = noone;
	talkingTarget = noone;
	
	
	//Here we deal with how the player knows what object its interacting with
	var distance = 45;
	with(obj_water){ //water objects - just need to check for parent objects with will include children
		var waterDistance = point_distance(x,y, other.x,other.y); //get the distance from object to player
		//cant fish and talk
		if(other.talkingTarget == noone){
			if(waterDistance < distance){ // if object is the closest then we set players target object to the id
				distance = waterDistance;
				other.fishingTarget  = id;
			} 
		}
	}
	
	//Same logic for other two objects that can be interacted with store objects (obj_medpac is parent) and sign objs
	//I just copied and pasted and updated as needed
	var storeDistance = 45;
	with(obj_medpac){
		var itemDistance = point_distance(x,y, other.x,other.y);
		if(other.storeTarget == noone){
			if(itemDistance < storeDistance){
				storeDistance = waterDistance;
				other.storeTarget  = id;
			} 
		}
	}
	
	var distanceTolerance = 40;
	with(obj_sign){
		var signDistance = point_distance(x,y, other.x,other.y);
		if(signDistance <= distanceTolerance){
			other.talkingTarget  = id;
		}
	}
	
	
	
	//INTERACTION CODE
	//at this point we know what the targets are
	if keyboard_check_pressed(ord("E")){
		//double check target exists
		if instance_exists(fishingTarget) {
			state = States.Fishing; //update state to fishing
			src_minigame(x,y, layer); //start the minigame
		}
		
		//double check target exists
		if instance_exists(talkingTarget) {
			state = States.Talking;
			with(talkingTarget){
				self.talking = true;
				instance_create_depth(x, y - 10, self.depth + 1, self.dialog); //create a dialog object, talking target has a variable dialog that stores the dialog object
			}
		}
	}

}
//FISHING STATE
else if(state == States.Fishing) {

	//player stops fishing by pressing E
	if keyboard_check_pressed(ord("E")){
		state = States.Regular;
		//because fishing rate is a float we want to round before we update the globals
		self.basicFish = round(basicFish);
		self.salmonFish = round(salmonFish);
		self.codFish = round(codFish);
		//adding in check for knowing if wave should start
		if(!global.wave_begin){
			global.wave_begin = true;
		}
		fishing = false; // no longer fishing (note: not sure why this exists at one point it had a use but now im not sure but im not deleting it in case it does lol)
		//instance_destroy(obj_minigame);
	}
	
	//logic for knowing what fish we are catching
	if(fishingTarget.fishType == "cod"){
		codFish += collection_rate * global.collectionModifer;
		basicFish += random(collection_rate);
		salmonFish += random(collection_rate);
	} else if(fishingTarget.fishType == "salmon"){
		salmonFish += collection_rate * global.collectionModifer;
		basicFish += random(collection_rate);
		codFish += random(collection_rate);
	} else {
		basicFish += collection_rate * global.collectionModifer;
		codFish += random(collection_rate)
		salmonFish += random(collection_rate);
	}
	
	
} else if(state == States.Talking){
	if keyboard_check_pressed(ord("E")){
		state = States.Regular;
		with(talkingTarget){ //this is to make sure the merchant stops/starts moving when talking to  or not taling to it
				self.talking = false;
		}
	}
}


