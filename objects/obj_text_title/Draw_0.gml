draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if room == rm_menu {
	draw_text(x, y, "ASSTEROIDS");
}
if room == rm_leaderboard {
	draw_text(x,y, "LEADERBOARD");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);