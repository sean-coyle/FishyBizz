/// @description Insert description here
// You can write your code in this editor

// used for spawning another enemy


if enemies_left >= 1 {
	instance_create_layer(x,y,"Instances",enemy_type)
	enemies_left -= 1
}

alarm[0] = spawn_rate
