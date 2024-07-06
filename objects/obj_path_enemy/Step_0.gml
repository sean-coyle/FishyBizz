/// @description Insert description here
// You can write your code in this editor

var _distance = 0;

// this prevents the patrol_enemy from immediately following the player.
// The player must first enter the range of the enemy

if (instance_exists(obj_player)) {
	_distance = distance_to_object(obj_player)
	if (_distance < lock_on_distance) {
		path_end()
		
		// Inherit the parent event
		event_inherited();
	}
}

if direction >= 45.0 and direction <= 135 {
	sprite_index = spr_path_enemy
}

if direction > 135 and direction < 225 {
	image_xscale = 1;
}


if direction < 315 and direction >= 225 {
	sprite_index = spr_path_enemy;
}

if direction < 45 and direction >= 0 or 
		direction <= 360 and direction >= 315 
{
	image_xscale = -1;
}
