function scr_controls1(){
	if keyboard_check_pressed(ord("W")) {
		image_angle += 180;
	}
	
	if keyboard_check_pressed(ord("S")) {
		image_angle -= 180;
	}
	
	if keyboard_check(ord("A")) {
		motion_add(image_angle+90, 0.1);
	}
	
	if keyboard_check(ord("D")) {
		motion_add(image_angle-90, 0.1);
	}
	
	if keyboard_check(vk_up) //Checks if the up arrow key is being pressed (checks if held)// Adds velocity in the direction the ship sprite is facing							  // This is a very simple way to imitate movement in a weightless vacuum
	{
		motion_add(image_angle, 0.1);
	}	
	
	if keyboard_check(vk_down) {
		motion_add(image_angle, -0.1);
	}
								  
	if keyboard_check(vk_left) // Checks if left arrow key is being pressed.
	{
		image_angle += 4; // Rotates the sprite 4 degrees to the left per frame
	}
	if keyboard_check(vk_right) // Checks if right arrow key is being pressed
	{
		image_angle	-= 4; // Rotates the sprite 4 degrees to the right per frame
	}
	
	if keyboard_check_pressed(vk_space) {
		instance_create_layer(x, y, "Instances", obj_bullet); // Creates a bullet object at the x,y of ship
		audio_play_sound(Blip, 0, false, 1, 0, random_range(.8, 1.2));
		
		if powerup == 1 {
			powerup_multishot();
		}
	}
}

function scr_controls2(){
	if keyboard_check_pressed(vk_up) {
		image_angle += 180;
	}
	
	if keyboard_check_pressed(vk_down) {
		image_angle -= 180;
	}
	
	if keyboard_check(vk_left) {
		motion_add(image_angle+90, 0.1);
	}
	
	if keyboard_check(vk_right) {
		motion_add(image_angle-90, 0.1);
	}
	
	if keyboard_check(ord("W")) //Checks if the up arrow key is being pressed (checks if held)// Adds velocity in the direction the ship sprite is facing							  // This is a very simple way to imitate movement in a weightless vacuum
	{
		motion_add(image_angle, 0.1);
	}	
	
	if keyboard_check(ord("S")) {
		motion_add(image_angle, -0.1);
	}
								  
	if keyboard_check(ord("A")) // Checks if left arrow key is being pressed.
	{
		image_angle += 4; // Rotates the sprite 4 degrees to the left per frame
	}
	if keyboard_check(ord("D")) // Checks if right arrow key is being pressed
	{
		image_angle	-=4; // Rotates the sprite 4 degrees to the right per frame
	}
	
	if keyboard_check_pressed(vk_space) {
		instance_create_layer(x, y, "Instances", obj_bullet); // Creates a bullet object at the x,y of ship
		audio_play_sound(Blip, 0, false, 1, 0, random_range(.8, 1.2));
		
		if powerup == 1 {
			powerup_multishot();
		}
	}
}

function menu_controls () {
	button_array = [obj_button_trophies, obj_button_play, obj_button_help, obj_button_leaderboard, obj_button_quit];
	sprite_array = [spr_selector2, spr_select, spr_select, spr_select, spr_select];
	
	
	sprite_index = sprite_array[m_select];
	image_xscale = button_array[m_select].image_xscale;
	image_yscale = button_array[m_select].image_yscale;
	
	
	x = button_array[m_select].x;
	y = button_array[m_select].y;
	
	if keyboard_check_pressed(vk_space) {
		event_perform_object(button_array[m_select], ev_alarm, 0);
	}
}

function p_menu_controls () {
	button_array = [obj_button_resume, obj_button_menu, obj_button_quit, obj_button_save, obj_button_load];
	
	m_val = m_select - 1;
	if (m_select > 11) {
		m_val = m_select - 9;
	}
	
	x = button_array[m_val].x;
	y = button_array[m_val].y;
	image_xscale = button_array[m_val].image_xscale;
	image_yscale = button_array[m_val].image_yscale;
	
	if keyboard_check_pressed(vk_space) {
		event_perform_object(button_array[m_val], ev_alarm, 0);	
	}
}

function l_menu_controls () {
	if room == rm_leaderboard {
		button_array = [obj_button_menu,obj_button_online];
	}
	if room == rm_global {
		button_array = [obj_button_menu,obj_button_leaderboard];
	}
	
	m_val = m_select - 1;
	x = button_array[m_val].x;
	y = button_array[m_val].y;
	image_xscale = button_array[m_val].image_xscale;
	image_yscale = button_array[m_val].image_yscale;
	
	if keyboard_check_pressed(vk_space) {
		event_perform_object(button_array[m_val], ev_alarm, 0);	
	}
	
}

function end_menu_controls () {
	button_array = [obj_button_again,obj_button_menu,obj_button_leaderboard,obj_button_quit,obj_button_leaderboard];
	m_val = m_select - 1;
	x = button_array[m_val].x;
	y = button_array[m_val].y;
	image_xscale = button_array[m_val].image_xscale;
	image_yscale = button_array[m_val].image_yscale;
	
	show_debug_message("m_val: " + string(m_val) + " && m_select: " + string(m_select));
	
	if keyboard_check_released(vk_space) {
		event_perform_object(button_array[m_val], ev_alarm, 0);	
	}
}