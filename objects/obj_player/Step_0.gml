/// @description player object
// You can write your code in this editor
x = clamp(x, sprite_width/2, room_width - sprite_width/2);

y = clamp(y, sprite_height/2, room_height - sprite_height/2);

if hp <= 0 {
	instance_destroy(self);
}

if (state == States.Regular){
	var xRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var xleft = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var yUp =  keyboard_check(ord("W")) or keyboard_check(vk_up);
	var yDown = keyboard_check(ord("S")) or keyboard_check(vk_down);

	if xRight { 
		x+= player_speed;
		image_speed = player_speed / 2;
		sprite_index  = spr_player_right;
	}
	if xleft { 
		x-= player_speed; 
		image_speed = player_speed / 2;
		sprite_index  = spr_player_left;
	}
	if yUp { 
		y-= player_speed; 
		image_speed = player_speed / 10;
		sprite_index  = spr_player_up;
	}
	if yDown { 
		y+= player_speed; 
		image_speed = player_speed / 10;
		sprite_index  = spr_player_dwn;
	}
	
	image_speed = 0;
	
	var distance = 60;
	fishingTarget = noone;
	with(obj_water){
		var waterDistance = point_distance(x,y, other.x,other.y);
		if(waterDistance < distance){
			distance = waterDistance;
			other.fishingTarget  = id;
		} 
	}
	
	if keyboard_check_pressed(ord("E")){
		if instance_exists(fishingTarget) {
			state = States.Fishing;
			src_minigame(x,y, layer);
		}
	}

}

else if(state == States.Fishing) {
	if keyboard_check_pressed(ord("E")){
		state = States.Regular;
		global.basicFish += round(basicFish);
		global.salmonFish += round(salmonFish);
		global.codFish += round(codFish);
		fishing = false;
		//instance_destroy(obj_minigame);
	}
	
	
	if(fishingTarget.fishType == "cod"){
		codFish += collection_rate * global.collectionModifer;
	} else if(fishingTarget.fishType == "salmon"){
		salmonFish += collection_rate * global.collectionModifer;
	} else {
		basicFish += collection_rate * global.collectionModifer;
	}
}