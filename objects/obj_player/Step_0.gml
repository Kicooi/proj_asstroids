//Ship Movement controls//
invulnerable = global.invulnerable;
if global.invulnerable == false {
	image_alpha = 1;
}

if global.paused == false { // This code will only run if game is unpaused
		
	global.shipdir = obj_player.direction; // These variables will update constantly 
	global.shipspeed = obj_player.speed;   // while game is running to get ship velocity
	move_wrap (true, true, 0); // Causes ship to wrap to other side of screen when moving off screen

	if powerup != 0 {
		powerupalarm--;
		if powerupalarm <= 0 {
			powerup = 0;
			global.powerupCounter = 0;
		}
	}
	
	if global.controls_settings == 1 {
		scr_controls1();
	}
	if global.controls_settings == 2 {
		scr_controls2();
	}
	
	if mouse_check_button_pressed(mb_left) // Checks if left mouse button has been pressed (does not check if held)
	{
		instance_create_layer(x, y, "Instances", obj_bullet); // Creates a bullet object at the x,y of ship
		audio_play_sound(Blip, 0, false, 1, 0, random_range(.8, 1.2));
		
		if powerup == 1 {
			powerup_multishot();
		}
	}														  // (bullet movement and behavior handled by bullet
															  // Creation event in obj_bullet)
}

if global.paused == true { // This runs if game is paused
	alarm[0]++;
	selfactive = false;  
	if global.load_state == false {			//This variable temporarily stores the ship speed
		shipspeedtemp = global.shipspeed;	 // while the game is paused //
	}
	motion_set(direction,0);
	
} else if selfactive == false and global.paused == false { // Runs if game has just been unpaused
	selfactive = true;
	motion_set(direction, shipspeedtemp); // Uses the temporary variables to restore motion to the ship
}