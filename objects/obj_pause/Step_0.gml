/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
		room_goto(FishingArea);
        instance_activate_all();
		
    }
	if paused == true
	{

    instance_deactivate_all(true);
	room_goto(Paused);
	draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
}
    
}
	