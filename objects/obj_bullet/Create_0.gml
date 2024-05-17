if global.load_state == false {
	//On create, set speed and direction
	speed = 10;
	direction = obj_player.image_angle; //Sets direction to direction player is aiming
	motion_add(global.shipdir, global.shipspeed); // Adds momentum from ship to bullet
	selfactive = true;
	bulletspeed = speed;
}
