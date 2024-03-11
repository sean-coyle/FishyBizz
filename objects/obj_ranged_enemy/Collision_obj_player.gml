/// @description Insert description here
// You can write your code in this editor

is_stunned = true
alarm[1] = stun_timer
	
direction = point_direction(x, y, obj_player.x, obj_player.y)+180
speed = knock_back_amount
speed = lerp(speed, spd, 0.5)
