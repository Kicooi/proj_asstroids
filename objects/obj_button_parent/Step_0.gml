if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	image_alpha = .6;	
} else {
	image_alpha = 1;
}

if (mouse_check_button_pressed(mb_left)) {
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom)) {
		if global.cursor_toggle == 0 {
			y = ystart + 4;

			alarm[0] = 10;

		} else {
			global.cursor_toggle = 0;
		}

	}
}