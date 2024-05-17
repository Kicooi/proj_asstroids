if global.load_state == false {
	// On creation, set speed and movement of rocks
	speed = 1;
	direction = random(360); // This will make the rock move in any random direction 
	image_angle = random(360); // This will set the rotation position of the sprite to any random direction
	selfactive = true;
	selfdir = direction;
	tempspeed = speed;
}