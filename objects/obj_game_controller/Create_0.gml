/// @description Insert description here
// You can write your code in this editor

global.wave = 1
global.time = 1

round_start_time = get_unix_time()


global.wave_begin = true

// Rounds are the day cycle. So at the end of the round, 
// it is night time and is time to sell to the black market dealer
global.round_over = false
