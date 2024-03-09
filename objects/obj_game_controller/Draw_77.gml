/// @description Insert description here
// You can write your code in this editor

surface_set_target(surf)
shader_set(shd_day_cycle)
shader_set_uniform_f(shdr_uni_time, global.time, round_length_minutes)
draw_surface(application_surface, 0,0)
shader_reset()
surface_reset_target()

draw_surface_ext(surf,0,0,1,1,0,c_white,1)
