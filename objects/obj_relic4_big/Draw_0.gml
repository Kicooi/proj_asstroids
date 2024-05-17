if global.relic4 == true {
	draw_self();
	if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) 
	{
		draw_set_font(fnt_menu);
	    draw_text_transformed(mouse_x-280, mouse_y-105, "The 'Statue of Napoleon'\n"
		+ "Times found: " + string(global.relic_counter4), 1, 1, 0);
	}
}