/// @description Insert description here
// You can write your code in this editor
if(point_distance(obj_player.x, obj_player.y,  self.x, self.y) <= 32){
	showInfo = true;
} else {
	showInfo = false;
}


var basic = false;
var cod = false;
var salmon = false;
if(self.purchase_fish == "basic"){
	canPurchase = (obj_player.basicFish - self.cost >= 0) ? true : false;
	basic = true;
}
				
if(self.purchase_fish == "cod"){
	canPurchase = (obj_player.codFish - self.cost >= 0) ? true : false;
	cod = true;
}
				
if(self.purchase_fish == "salmon"){
	canPurchase = (obj_player.salmonFish - self.cost >= 0) ? true : false;
	salmon = true;
}
	

//if we can show info we know player is near, and we want to make sure we can purchase
if(showInfo and canPurchase){
	if(keyboard_check_released(ord("E"))){
		//cod is related to iron fish
		if(cod){
			obj_player.codFish -= self.cost;
			//add buff
			obj_player.hits = 4;
			if(!multiple_purchase){
				instance_destroy(self);
			}
		}
		
		//salmon golden rod
		if(salmon){
			obj_player.salmonFish -= self.cost;
			//add buff
			obj_player.collection_rate = 0.5;
			if(!multiple_purchase){
				instance_destroy(self);
			}
		}
		
		//basic healthpack
		if(basic){
			obj_player.basicFish -= self.cost;
			//add buff
			show_debug_message(obj_player.hp)
			obj_player.hp += 25;
			show_debug_message(obj_player.hp)
			if(!multiple_purchase){
				instance_destroy(self);
			}
		}
	}
}

