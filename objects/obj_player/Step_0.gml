/// @description Insert description here
// You can write your code in this editor

if self.health <= 0 {
	instance_destroy(self);
}

if (state == States.Regular){
	var xRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var xleft = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var yUp =  keyboard_check(ord("W")) or keyboard_check(vk_up);
	var yDown = keyboard_check(ord("S")) or keyboard_check(vk_down);

	if xRight { x+= player_speed; }
	if xleft { x-= player_speed; }
	if yUp { y-= player_speed; }
	if yDown { y+= player_speed; }
	
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
		basicFish = round(basicFish);
		fishing = false;
		show_debug_message(basicFish);
		//instance_destroy(obj_minigame);
	}
	//temp for now will rework later
	basicFish += collection_rate;
}