/// @description melee attack
// You can write your code in this editor
//"lock" mouse pos on click 
var mouseX = mouse_x;
var mouseY = mouse_y;



/*a valid hit is if the enemy is in distance of the player
and in the same direction of  of the mouse when it was clicked */

//compare angles: player and mouse, and enemey and player
//need the angle between mouse and player
var playerMouseAngle = point_direction(x, y, mouseX, mouseY);

//adding a tolerances
var angleTolerance = 45;

//find nearist enemey, if one exists then see if its a valid hit
combatTarget = instance_nearest(x,y, obj_basic_enemy);

if combatTarget != noone {
	
	var enemyAngle = point_direction(x,y,combatTarget.x, combatTarget.y);
	var angleDiff = angle_difference(playerMouseAngle, enemyAngle);
	
	//is a valid hit check
	//distance is close enough
	var distance = point_distance(x,y, combatTarget.x, combatTarget.y);
	if(distance <= obj_player.melee_range){
		if(angleDiff <= angleTolerance){
			sprite_index = spr_player_melee;
			audio_play_sound(snd_attack, 1, false);
			combatTarget.hp -= obj_player.melee_damage;
				
		}
	}
	
}












