if global.paused == false { // Only runs if game is unpaused
	if global.lives <= 0 {
		
		if global.score > global.array_score[0].score {
			global.newhighscore = true;
		}
		if global.score >= global.array_score[9].score {
			instance_activate_layer("Input");
		} else {
			obj_1god_game.alarm[2] = 10;
			instance_activate_layer("game_over");
			
			instance_create_layer(fa_center, fa_middle, "game_over", obj_select);
			
		}
		
	} else {
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_player);
		global.shipdead = false;
		alarm[1] = 180;
	}
}