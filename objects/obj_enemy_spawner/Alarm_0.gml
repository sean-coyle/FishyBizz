/// @description Insert description here
// You can write your code in this editor

// used for spawning another enemy

var _random_enemy_choice = 0

if enemies_left > 0 {
	_random_enemy_choice = irandom_range(1,101)
	if _random_enemy_choice <= melee_percentage
		instance_create_layer(x,y,layer,enemy_type1)
	else
		instance_create_layer(x,y,layer,enemy_type2)
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
