if global.paused == true and selfactive == true {
	motion_set(direction, 0);
	selfactive = false;
} else if global.paused == false and selfactive == false {
	selfactive = true;
	motion_set(direction, 1.5);
}