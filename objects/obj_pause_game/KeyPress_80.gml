/// @description Insert description here
// You can write your code in this editor

isPaused = !isPaused
	
if !isPaused {
	instance_activate_all()
	//_label.visible = false
	surface_free(pause_surface)
	pause_surface = -1
} else {
	//_label.visible = true
}
