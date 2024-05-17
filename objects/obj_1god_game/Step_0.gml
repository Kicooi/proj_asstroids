if global.paused == true{
	//if global.shipdead == false {
	//	if keyboard_check_pressed(ord("L")) {
	//		global.load_state = true;
	//		load_game();
	//	}

	//	if keyboard_check_pressed(ord("O")) {
	//		save_game();
	//	}
	//}
	
	alarm[0]++;
}

if global.paused == false and global.load_state == true {
	global.load_state = false;
	obj_game.alarm[1] = 120;
}

global.rand = irandom_range(0,150);


if global.cursor_toggle == 0 {
	instance_deactivate_object(obj_select);
	window_set_cursor(cr_default);
}
if global.cursor_toggle == 1 {
	if room != rm_game {
		instance_activate_object(obj_select);
		window_set_cursor(cr_none);
	}
	if room == rm_game {
		if global.paused == true {
			if instance_exists(inst_6E980E06) == false {
				instance_activate_object(inst_6E980E06);
			}
		}
		if go_curse_tog == true {
			if instance_exists(inst_606958CA) == false {
				instance_activate_object(inst_606958CA);
			}
		}
		window_set_cursor(cr_none);	
	}
	
}

if (window_mouse_get_delta_x() > 5) or (window_mouse_get_delta_y() > 5) {
	if global.cursor_toggle == 1 {
		global.cursor_toggle = 0;
	}
}