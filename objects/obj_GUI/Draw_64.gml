/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_halign(fa_left);
	if(instance_exists(obj_player)){
		
	draw_healthbar(20,10,120,20,obj_player.hp,c_black,c_red,c_lime,0,true,true)
	//draw_text(16,64,"Score: "+string(obj_player.points))
	draw_text(20, 30, "Basic Fish: " + string(round(obj_player.basicFish)))
	draw_text(20, 50, "Cod: " + string(round(obj_player.codFish)))
	draw_text(20, 70, "Salmon: " + string(round(obj_player.salmonFish)))
	
	//use to draw fish sprite next to fish numbers
    //draw_sprite(spr_, global.health, 30, 50);
	//draw_sprite(spr_, global.health, 30, 50);
	//draw_sprite(spr_, global.health, 30, 50);
	



	}




