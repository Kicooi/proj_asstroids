randomize();
global.load_state = false;
boardsync = false;
topname = false;
globalsync = false;
sync_p2 = false;
cleanup = 0;
trophysync = 0;

global.shipdead = false; // Variable used to check if ship is dead

global.newhighscore = false;

global.cursor_toggle = 0;

load_relics();

if file_exists("pointsboard.txt") {
	load_pointsboard();
	sync_p2 = true;
} else {
	initialize_pointsboard();
}

global.rand = random_range(6,8);

root = "highscores";
global.killer = false;
initilizer();

if room == rm_game {
	alarm[0] = 2000;
}
if room == rm_game {
	instance_deactivate_object(inst_606958CA);
}

go_curse_tog = false;
