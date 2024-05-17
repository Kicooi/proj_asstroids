if textedit == true {
	//if keyboard_check_pressed(vk_anykey) {
	//	if string_length(keyboard_string) > 10 {
	//		keyboard_string = string_copy(keyboard_string, 1, 1);
	//	}
	//	player_input = keyboard_string;
	//	show_debug_message(player_input);
	//}
	
	var checkInput = getInput(global.playername); //scrRelics
	if (checkInput = 0) {
		textedit = false;
	} else {
		global.playername = checkInput;
	}
}