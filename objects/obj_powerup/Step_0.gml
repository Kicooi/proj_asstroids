move_wrap(true, true, 20);

if global.paused == true {
	speed = 0;
	selfactive = false;
} else if selfactive == false and global.paused == false {
	selfactive = true;
	speed = 1.5;
}