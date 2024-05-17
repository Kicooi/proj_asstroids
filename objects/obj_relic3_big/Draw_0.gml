if global.relic3 == true {
	draw_self();
	if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) 
	{
		draw_set_font(fnt_menu);
	    draw_text_transformed(mouse_x-120, mouse_y-135, "The 'Mona Lisa'\n"
		+ "Times found: " + string(global.relic_counter3), 1, 1, 0);
	}
}