/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_halign(fa_left);
draw_set_font(fn_default);
if(instance_exists(obj_player)){
	
	draw_set_alpha(.5);
	draw_rectangle_color(0, 100, 235, -80, c_ltgrey, c_ltgrey, c_ltgrey, c_ltgrey, false)
	draw_set_alpha(1);
	draw_healthbar(20,10,220,20,obj_player.hp,c_black,c_red,c_lime,0,true,true)
	draw_text(20, 30, "Basic Fish: " + string(round(obj_player.basicFish)))
	draw_text(20, 50, "Cod: " + string(round(obj_player.codFish)))
	draw_text(20, 70, "Salmon: " + string(round(obj_player.salmonFish)))
	
	draw_set_alpha(.5);
	draw_rectangle_color(235, 0, (room_width), 40, c_ltgrey, c_ltgrey, c_ltgrey, c_ltgrey, false)
	draw_set_alpha(1);

	if(room != TutorialArea)
	{
		draw_text((room_width / 2) - 10, 20, $"WAVE: {global.wave} ENEMY COUNT: {obj_enemy_spawner.remaining_enemies}");
	}

	//use to draw fish sprite next to fish numbers
    //draw_sprite(spr_, global.health, 30, 50);
	//draw_sprite(spr_, global.health, 30, 50);
	//draw_sprite(spr_, global.health, 30, 50);
	

}




