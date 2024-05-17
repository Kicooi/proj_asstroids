draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var i = 0; i < array_length(_array); i++;) {
	var _doc = _array[i];
	draw_text(x, y + (56 * i), string(i+1) + ": " + $"{_doc.name} - {_doc.score}");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);