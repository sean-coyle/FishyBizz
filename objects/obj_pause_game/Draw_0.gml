/// @description Insert description here
// You can write your code in this editor

if(isPaused) {
	
	if(!surface_exists(pause_surface)) {
		pause_surface = surface_create(view_wport[0], view_hport[0])
		instance_deactivate_all(true)
		surface_set_target(pause_surface)
		draw_surface(application_surface, 0,0)
		surface_reset_target()
	} else {
		draw_surface(pause_surface,0,0)
	}
}

