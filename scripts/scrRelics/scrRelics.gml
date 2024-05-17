function load_relics() {
	if file_exists("Relics.txt") {
		var _file = file_text_open_read("Relics.txt");
		var _struct = json_parse(file_text_read_string(_file));
		
		global.relic1 = _struct.relic1;
		global.relic2 = _struct.relic2;
		global.relic3 = _struct.relic3;
		global.relic4 = _struct.relic4;
		
		global.relic_counter1 = _struct.relic_counter1;
		global.relic_counter2 = _struct.relic_counter2;
		global.relic_counter3 = _struct.relic_counter3;
		global.relic_counter4 = _struct.relic_counter4;
		
		global.newrelic = _struct.newrelic;		
		
		file_text_close(_file);
		
	} else {
		global.relic1 = false;
		global.relic2 = false;
		global.relic3 = false;
		global.relic4 = false;
		
		global.relic_counter1 = 0;
		global.relic_counter2 = 0;
		global.relic_counter3 = 0;
		global.relic_counter4 = 0;
		
		global.newrelic = false;
		
		save_relics();
	}
}

function save_relics() {
	var _struct = {
		relic1 : global.relic1,
		relic2 : global.relic2,
		relic3 : global.relic3,
		relic4 : global.relic4,
		
		relic_counter1 : global.relic_counter1,
		relic_counter2 : global.relic_counter2,
		relic_counter3 : global.relic_counter3,
		relic_counter4 : global.relic_counter4,
		
		newrelic : global.newrelic,
	};
	
	var _string = json_stringify(_struct);
	var _file = file_text_open_write("Relics.txt");
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function getInput( text ){
    //Backspace
    if( keyboard_check_pressed( vk_backspace ) ){
        var strlen = string_length( text );
        if( strlen > 0){
            text = string_delete(text, strlen, 1 );    
        }
    }
    
    //Enter
    if( keyboard_check_pressed( vk_enter) ){
        return 0
    }
    
    //Get the keyboard buffer and then clear it    
    var keyboardIO = keyboard_string;
    io_clear();
    
    //Snip to max length of 10
    if( string_length( text) + string_length( keyboardIO )  > 10 ){
        var strlen = string_length(text);
		text = string_delete(text, strlen, 10 );   
    }
    
    return string(text) + keyboardIO;
}