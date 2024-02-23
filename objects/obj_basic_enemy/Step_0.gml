/// @description Insert description here
// You can write your code in this editor

alarm[0] = attack_speed

if health <= 0 {
	instance_destroy()
}

if(instance_exists(obj_player)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = spd
}


