function check_board() {
	if global.score >= global.highscore{
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.hscore6;
		global.hscore6 = global.hscore5;
		global.hscore5 = global.hscore4;
		global.hscore4 = global.hscore3;
		global.hscore3 = global.hscore2;
		global.hscore2 = global.highscore;
		global.highscore = global.score;
		global.name1 = global.playername;
		save_scoreboard();
		save_score();
	} else if global.score >= global.hscore2 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.hscore6;
		global.hscore6 = global.hscore5;
		global.hscore5 = global.hscore4;
		global.hscore4 = global.hscore3;
		global.hscore3 = global.hscore2;
		global.hscore2 = global.score;
		global.name2 = global.playername;
		save_score();
	} else if global.score >= global.hscore3 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.hscore6;
		global.hscore6 = global.hscore5;
		global.hscore5 = global.hscore4;
		global.hscore4 = global.hscore3;
		global.hscore3 = global.score;
		global.name3 = global.playername;
		save_score();
	} else if global.score >= global.hscore4 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.hscore6;
		global.hscore6 = global.hscore5;
		global.hscore5 = global.hscore4;
		global.hscore4 = global.score;
		global.name4 = global.playername;
		save_score();
	} else if global.score >= global.hscore5 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.hscore6;
		global.hscore6 = global.hscore5;
		global.hscore5 = global.score;
		global.name5 = global.playername;
		save_score();
	} else if global.score >= global.hscore6 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.hscore6;
		global.hscore6 = global.score;
		global.name6 = global.playername;
		save_score();
	} else if global.score >= global.hscore7 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.hscore7;
		global.hscore7 = global.score;
		global.name7 = global.playername;
		save_score();
	} else if global.score >= global.hscore8 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.hscore8;
		global.hscore8 = global.score;
		global.name8 = global.playername;
		save_score();
	} else if global.score >= global.hscore9 {
		global.hscore10 = global.hscore9;
		global.hscore9 = global.score;
		
		global.name9 = global.playername;
		save_score();
	} else if global.score >= global.hscore10 {
		global.hscore10 = global.score;
		global.name10 = global.playername;
		save_score();
	} 
	
}

function check_scoreboard() {
	sort_score = function (_a, _b) {
		return _b.score - _a.score;
	}	
	var _struct = {
		name : global.playername,
		score : global.score,
	};
	array_push(global.array_score, _struct);
	array_sort(global.array_score, sort_score);
	array_resize(global.array_score, 10);
	show_debug_message(global.array_score);
	var _file = file_text_open_write("pointsboard.txt");
	var _string = json_stringify(global.array_score);
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function initialize_pointsboard() {
	var _struct = {
		name : "",
		score : 0,
	};
	global.array_score = array_create(10, _struct);
	
	var _file = file_text_open_write("pointsboard.txt");
	var _string = json_stringify(global.array_score);
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function write_pointsboard() {
	sort_score = function (_a, _b) {
		return _b.score - _a.score;
	}
	var _file = file_text_open_write("pointsboard.txt");
	array_sort(global.array_score, sort_score);
	array_resize(global.array_score, 10);
	var _string = json_stringify(global.array_score);
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function load_pointsboard() {
	if file_exists("pointsboard.txt") {
		var _file = file_text_open_read("pointsboard.txt");
		var _json = file_text_read_string(_file);
		global.array_score = json_parse(_json);
		file_text_close(_file);
	}
}

function save_scoreboard() {
	var _file = file_text_open_write("scoreboard.txt");
	file_text_write_real(_file, global.score);
	file_text_close(_file);
}

function save_score(){
	
	var _struct = {
		highscore: global.highscore,
		hscore2: global.hscore2,
		hscore3: global.hscore3,
		hscore4: global.hscore4,
		hscore5: global.hscore5,
		hscore6: global.hscore6,
		hscore7: global.hscore7,
		hscore8: global.hscore8,
		hscore9: global.hscore9,
		hscore10: global.hscore10,
		
		name1: global.name1,
		name2: global.name2,
		name3: global.name3,
		name4: global.name4,
		name5: global.name5,
		name6: global.name6,
		name7: global.name7,
		name8: global.name8,
		name9: global.name9,
		name10: global.name10,
	};
	
	var _string = json_stringify(_struct);
	
	var _file = file_text_open_write("leaderboard.txt");
		
	file_text_write_string(_file, _string);
	
	file_text_close(_file);
}

function load_score(){
	if file_exists("scoreboard.txt"){
		var _file = file_text_open_read("scoreboard.txt");
		global.highscore = file_text_read_real(_file);
		file_text_close(_file);		
	}
}

function load_scoreboard() {
	if file_exists ("leaderboard.txt") {
		var _file = file_text_open_read("leaderboard.txt");
		var _json = file_text_read_string(_file);
		var _struct = json_parse(_json);
		
		global.highscore = _struct.highscore;
		global.hscore2 = _struct.hscore2;
		global.hscore3 = _struct.hscore3;
		global.hscore4 = _struct.hscore4;
		global.hscore5 = _struct.hscore5;
		global.hscore6 = _struct.hscore6;
		global.hscore7 = _struct.hscore7;
		global.hscore8 = _struct.hscore8;
		global.hscore9 = _struct.hscore9;
		global.hscore10 = _struct.hscore10;
		
		if !struct_exists(_struct, "name1") {
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
			global.name1 = _struct.name1;
			global.name2 = _struct.name2;
			global.name3 = _struct.name3;
			global.name4 = _struct.name4;
			global.name5 = _struct.name5;
			global.name6 = _struct.name6;
			global.name7 = _struct.name7;
			global.name8 = _struct.name8;
			global.name9 = _struct.name9;
			global.name10 = _struct.name10;
		}
		file_text_close (_file);
	}
}
	
function sync_highscore() {
	var _doc = json_stringify( {
		name: global.name1,
		score: global.highscore
	} );
	FirebaseFirestore(root).Set(_doc);
}

function upload_score() {
	var _doc = json_stringify( {
		name: global.playername,
		score: global.score,
	} );
	FirebaseFirestore(root).Set(_doc);
}

function delete_score() {
	if data != -1 and array_length(data) > 0 {
		var _doc = FirebaseFirestore(root).Child(data[0].id);
		_doc.Delete();
	}
}

function download_score () { // Run in Async - Social event
	if async_load[? "status"] == 200 {
		switch (async_load[? "type"])
		{
			case "FirebaseFirestore_Collection_Listener":
				FirebaseFirestore(root).Query();
				break;
				
			case "FirebaseFirestore_Collection_Query":
				data = [];
				
				var _doc = async_load[? "value"];
				var _data = json_parse(_doc);
				var _names = variable_struct_get_names(_data);
				
				for (var i = 0; i < array_length(_names); i++) {
					var _doc = variable_struct_get(_data, _names[i]);
					_doc.id = _names[i];
					array_push(data, _doc);
				}
				
				array_sort(data, sort_score);
				break;				
		}
	}
}