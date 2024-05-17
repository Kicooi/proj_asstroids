// Inherit the parent event
event_inherited();

if room == rm_game {
	obj_game.points(false, true);
	instance_deactivate_layer("pause_menu");
	global.paused = false; 
	room_goto(rm_leaderboard);
	if global.newhighscore == true {
		global.newhighscore = false;
	}
}
if room == rm_menu {
	room_goto(rm_leaderboard);
}
if room == rm_global {
	room_goto(rm_leaderboard);
}