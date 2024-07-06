/// @description Insert description here
// You can write your code in this editor

if global.wave_begin == true {
	alarm[0] = spawn_rate;
	
	max_enemy_count = global.wave*enemy_per_level
	enemies_left = max_enemy_count
	
	remaining_enemies = enemies_left
		
	global.wave_begin = false;
}
