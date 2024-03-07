/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if hp <= 0 {
	instance_destroy()
}

if(instance_exists(obj_player) and !is_stunned) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = spd
}

if direction >= 45.0 and direction <= 135 {
	sprite_index = spr_r_enemy_up
}

if direction > 135 and direction < 225 {
	sprite_index = spr_r_enemy_left
}


if direction < 315 and direction >= 225 {
	sprite_index = spr_r_enemy_down
}

if direction < 45 and direction >= 0 or 
		direction <= 360 and direction >= 315 
{
	sprite_index = spr_r_enemy_right
}

