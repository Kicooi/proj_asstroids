if room == rm_game {
	if keyboard_check_pressed(vk_enter) {
		//if textedit == true {
		//	global.playername = player_input;
		//	textedit = false;
		//	io_clear();
			check_scoreboard();
			upload_score();
			instance_activate_layer("game_over");
			instance_deactivate_layer("Input");
		//}
	}
}

if room == rm_menu {
	if keyboard_check_pressed(vk_enter) {
		textedit = false;
		global.name1 = player_input;
		instance_activate_layer("Instances");
		obj_1god_game.topname = true;
		save_score();
		
		if obj_1god_game.globalsync == false and obj_1god_game.topname == true {
			if global.highscore > 0 {
				sync_highscore();
			}
			obj_1god_game.globalsync = true;
		}
		
		write_initilizer();
		instance_destroy();
	}
}