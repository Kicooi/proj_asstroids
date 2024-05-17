if global.paused == true {
	motion_set(direction,0);
	selfactive = false;
} else if selfactive == false and global.paused == false {
	motion_set(direction, bulletspeed);
	selfactive = true;
}