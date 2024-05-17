function initilizer() {
	if file_exists("Initilizer.txt") {
		load_initilizer();
	} else {
		write_initilizer();
	}
	
	score_init();
		
	if boardsync == false {
		save_score();
		boardsync = true;
	}
	if global.name1 != "Top Score" {
		topname = true;
	}
	if topname == false and boardsync == true {
		if file_exists("scoreboard.txt") {
			instance_deactivate_layer("Instances");
		
			instance_create_layer(room_width/2, room_height/2, "Initilizer", obj_input);	
		} else {
			topname = true;
		}
	}
	
	if globalsync == false and topname == true {
		if global.highscore > 0 {
			sync_highscore();
		}
		globalsync = true;
	}		
	write_initilizer();
	load_relics();
	
	if (boardsync && topname && globalsync) == true and sync_p2 == false {
		var _struct = {
			name : global.name1,
			score : global.highscore,
		};	array_push(global.array_score, _struct);
		_struct = {
			name : global.name2,
			score : global.hscore2,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name3,
			score : global.hscore3,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name4,
			score : global.hscore4,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name5,
			score : global.hscore5,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name6,
			score : global.hscore6,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name7,
			score : global.hscore7,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name8,
			score : global.hscore8,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name9,
			score : global.hscore9,
		}; array_push(global.array_score, _struct);
		_struct = {
			name : global.name10,
			score : global.hscore10,
		}; array_push(global.array_score, _struct);
		
		write_pointsboard();		
		sync_p2 = true;
	}
	write_initilizer();
	
	if (boardsync && topname && globalsync && sync_p2) == true and cleanup == 0 {
		if file_exists("leaderboard.txt") {
			file_delete("leaderboard.txt");
		}
		if file_exists("scoreboard.txt") {
			file_delete("scoreboard.txt");
		}
		cleanup = 1;
	}
	write_initilizer();
}

function write_initilizer() {
	var _struct = {
		globalsync : obj_1god_game.globalsync,
		boardsync : obj_1god_game.boardsync,
		topname : obj_1god_game.topname,
		sync_p2 : obj_1god_game.sync_p2,
		cleanup : cleanup,
	};
	
	var _string = json_stringify(_struct);
	var _file = file_text_open_write("Initilizer.txt");
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function load_initilizer() {
	if file_exists("Initilizer.txt") {
		var _file = file_text_open_read("Initilizer.txt");
		var _json = file_text_read_string(_file);
		var _struct = json_parse(_json);
		
		obj_1god_game.globalsync = _struct.globalsync;
		obj_1god_game.boardsync = _struct.boardsync;
		obj_1god_game.topname = _struct.topname;
		if struct_exists(_struct, "sync_p2") {
			obj_1god_game.sync_p2 = _struct.sync_p2;
		}
		if struct_exists(_struct, "cleanup") {
			obj_1god_game.cleanup = _struct.cleanup;
		}
		
		file_text_close(_file);
	}
}

function score_init() {
	if file_exists("leaderboard.txt"){
		load_scoreboard();
		} else if file_exists("scoreboard.txt") {
			load_score();
			global.hscore2 = 0;
			global.hscore3 = 0;
			global.hscore4 = 0;
			global.hscore5 = 0;
			global.hscore6 = 0;
			global.hscore7 = 0;
			global.hscore8 = 0;
			global.hscore9 = 0;
			global.hscore10 = 0;
		
			global.name1 = "Top Score";
			global.name2 = "Second";
			global.name3 = "Third";
			global.name4 = "Fourth";
			global.name5 = "Fifth";
			global.name6 = "Sixth";
			global.name7 = "Seventh";
			global.name8 = "Eighth";
			global.name9 = "Ninth";
			global.name10 = "Tenth";
		} else {
			global.highscore = 0;
			global.hscore2 = 0;
			global.hscore3 = 0;
			global.hscore4 = 0;
			global.hscore5 = 0;
			global.hscore6 = 0;
			global.hscore7 = 0;
			global.hscore8 = 0;
			global.hscore9 = 0;
			global.hscore10 = 0;
		
			global.name1 = "Top Score";
			global.name2 = "Second";
			global.name3 = "Third";
			global.name4 = "Fourth";
			global.name5 = "Fifth";
			global.name6 = "Sixth";
			global.name7 = "Seventh";
			global.name8 = "Eighth";
			global.name9 = "Ninth";
			global.name10 = "Tenth";
		}
}