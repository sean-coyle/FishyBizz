/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player) {
	direction = point_direction(x,y,obj_player.x,obj_player.y)
} else {
	direction = irandom_range(0,360)
}

speed = speed_val
