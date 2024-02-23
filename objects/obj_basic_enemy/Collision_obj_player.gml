/// @description Insert description here
// You can write your code in this editor

// checks if alarm has gone off
if !alarm[0] {
	// knock back after hitting player
	direction = point_direction(x, y, obj_player.x, obj_player.y)+180
	speed = 20

	deal_damage(obj_player, attack_damage)
	
	alarm[0] = attack_speed
}
