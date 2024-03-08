/// @description melee attack
// You can write your code in this editor
//"lock" mouse pos on click 
mouseX = mouse_x;
mouseY = mouse_y;


if(obj_player.basicFish > 0){
	/*a valid hit is if the enemy is in distance of the player
	and in the same direction of  of the mouse when it was clicked */

	//compare angles: player and mouse, and enemey and player
	//need the angle between mouse and player
	playerMouseAngle = point_direction(x, y, mouseX, mouseY);

	//adding a tolerances
	angleTolerance = 30;

	//find nearist enemey, if one exists then see if its a valid hit
	combatTarget = instance_nearest(x,y, obj_basic_enemy);

	if combatTarget != noone {
	
		enemyAngle = point_direction(x,y,combatTarget.x, combatTarget.y);
		angleDiff = angle_difference(playerMouseAngle, enemyAngle);
	
		//is a valid hit check
		//distance is close enough
		distance = point_distance(x,y, combatTarget.x, combatTarget.y);
		if(distance <= obj_player.melee_range){
			if(angleDiff <= angleTolerance){
				sprite_index = spr_player_melee;
				combatTarget.hp -= obj_player.melee_damage;
				
				if(hits > self.durability){
					obj_player.basicFish--; 
					hits = 0; 
				}
				else {hits++;}
			}
		}
	
	}
}











