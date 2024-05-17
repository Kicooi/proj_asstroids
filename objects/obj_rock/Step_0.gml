if global.paused == false { // This will only run if game is unpaused
	move_wrap(true, true, 85); // causes rocks to wrap after moving off-screen, after 100 pixels
	image_angle += 1; // This will cause the rocks to spin
}

if global.paused == true { // This will only run if game is paused
	motion_set(direction, 0); // Stops motion of rock
	selfactive = false;
} else if selfactive == false and global.paused == false { // Only runs after game has been unpaused
	selfactive = true; 
	motion_set(direction, tempspeed); // Resumes motion of the rock
}