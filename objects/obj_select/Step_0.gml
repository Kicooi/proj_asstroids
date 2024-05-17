if room == rm_menu {
	menu_controls();
}

if (room == rm_game) && (global.shipdead == false) && (global.paused == true) {
	p_menu_controls();
}

if (room == rm_game) && (global.shipdead == true) {
	end_menu_controls();
}

if (room == rm_leaderboard) or (room == rm_global) {
	l_menu_controls();
}

if (room == rm_game) && (global.shipdead == false) && (global.paused == false) {
	instance_destroy();
}