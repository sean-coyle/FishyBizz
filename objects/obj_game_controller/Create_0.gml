/// @description Insert description here
// You can write your code in this editor

app_width = surface_get_width(application_surface)
app_height = surface_get_height(application_surface)

application_surface_draw_enable(false)
surf = surface_create(app_width, app_height)

shdr_uni_time = shader_get_uniform(shd_day_cycle, "u_vtime")

timeline_index = tml_time_cycle
timeline_loop = false
timeline_running = true

global.wave = 1
global.time = 0

//round_start_time = get_unix_time()

global.wave_begin = false


global.round_over = false


time_at_end_of_wave = -1
