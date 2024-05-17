if global.load_state == true {
	global.score = localscore;
	global.lives = locallives;
	global.controls_settings = controls_settings;
	global.powerupCounter = powerupCounter;
	points = function (_read, _reset) {
		static points = 0;
		if _read {			// Method to read points value
			return points;
		} else if _reset {	// Method to reset points value
			points = 0;
			return;
		}
		points = global.score;
		return points++;
			// Method to increase points value (false,false)
}
}

if global.load_state == false {
	points = function (_read, _reset) {
		static points = 0;
		if _read {			// Method to read points value
			return points;
		} else if _reset {	// Method to reset points value
			points = 0;
			return;
		}
		//points = global.score;
		return points++;
			// Method to increase points value (false,false)
	}
	global.score = points(true,false);
	localscore = global.score;
}



//global.scoreboard_array = array_create(10, 0);
if global.load_state == false {
	global.controls_settings = 1;
	controls_settings = global.controls_settings;

	global.lives = 2;
	global.powerupCounter = 0;
	locallives = global.lives;
	powerupCounter = global.powerupCounter;
	alarm[1] = 120;


	instance_deactivate_layer("game_over");
	instance_deactivate_layer("Input");
	global.playername = "Anon";
}
