/// @description Insert description here
// You can write your code in this editor
if room == rm_menu or room == rm_game {
// Inherit the parent event
event_inherited();
}

if room == rm_global {
	draw_self();

	draw_set_font(fnt_menu);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(x, y, "Local");

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
