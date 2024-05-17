if global.paused == true {
	alarm[1]++;	
}

if keyboard_check_pressed(vk_f1){
	global.controls_settings = 1;
}
if keyboard_check_pressed(vk_f2) {
	global.controls_settings = 2;
}

locallives = global.lives;
powerupCounter = global.powerupCounter;
controls_settings = global.controls_settings;
localscore = global.score;