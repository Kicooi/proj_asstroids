// Inherit the parent event
event_inherited();

if global.shipdead == false {
	global.load_state = true;
	obj_game.points(false, true);
	load_game();
}