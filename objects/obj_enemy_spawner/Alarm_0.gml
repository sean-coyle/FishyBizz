/// @description Insert description here
// You can write your code in this editor

// used for spawning another enemy


if enemies_left > 0 {
	instance_create_layer(x,y,"Instances",enemy_type)
	enemies_left -= 1
}
else {
	if global.wave_begin == true {
		wave++
		max_enemy_count = global.wave*enemy_per_level
		enemies_left = max_enemy_count
	}
	global.wave_begin = false
}

alarm[0] = spawn_rate
