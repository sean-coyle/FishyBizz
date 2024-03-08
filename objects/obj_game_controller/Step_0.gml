/// @description Insert description here
// You can write your code in this editor

if global.time > round_length_minutes {
	global.round_over = true
}

if instance_exists(obj_enemy_spawner) {
	if obj_enemy_spawner.enemies_left == 0 and time_at_end_of_wave == -1 {
		time_at_end_of_wave = global.time
		
	}
}

if time_at_end_of_wave != -1 {
	if global.time >= time_at_end_of_wave + 1 {
		global.wave_begin = true
	}
}

// all this code is deprecated now, but i dont wanna remove it

//var _current_time = get_unix_time()
//var _time_diff = round_start_time - _current_time

// sets the global time variable to an integer based on elapsed seconds since round has begun
//global.time = floor(_time_diff / 60)

// Checks if the end of the day has been reacehd
//if _time_diff >= (round_length_minutes*60) {
	//global.round_over = true
//}

// Once the round is over, we should either teleport the player into the
// black market room, or tell them to go to the exit of the current room