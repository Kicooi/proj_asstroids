draw_set_font(fnt_menu);
if data == -1 {
	draw_text(16,16, "Loading...");
} else {
	draw_text(x,y, "Global Leaderboard:");
	
	for (var i = 0; i < array_length(data); i++;) {
		var _doc = data[i];
		draw_text(x, (y+52) + (60 * i), $"{_doc.name} - {_doc.score}");
	}
}