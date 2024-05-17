// Inherit the parent event
event_inherited();
obj_game.points(false, true); // Calling the points function here ensures the points display resets when the game resets

global.killer = false;
global.shipdead = false;
obj_1god_game.alarm[0] = 2000;
instance_deactivate_object(obj_select)
if global.newhighscore == true {
		global.newhighscore = false;
}
room_restart();