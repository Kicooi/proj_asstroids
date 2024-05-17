// Inherit the parent event
event_inherited();

if room == rm_game {
	obj_game.points(false, true);
	instance_deactivate_layer("pause_menu");
	global.paused = false; 
	room_goto(rm_menu);
	if global.newhighscore == true {
		global.newhighscore = false;
	}
}
if room == rm_leaderboard {
	room_goto(rm_menu);
}
if room == rm_global {
	room_goto(rm_menu);
}
if room == rm_trophies {
	room_goto(rm_menu);
}