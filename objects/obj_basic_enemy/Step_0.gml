/// @description Insert description here
// You can write your code in this editor

if hp <= 0 {
	instance_destroy()
}

if(instance_exists(obj_player) and !is_stunned) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = spd
}
