draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _doc = global.array_score[0];
var _doc1 = global.array_score[1];
if global.newhighscore == false {
	i = 0;
	draw_text(x, y, "Highscore: " + $"{_doc.name} - {_doc.score}" );
} else if global.newhighscore == true {
	i = 1;
	draw_text(x, y, "New Highscore: " + $"{_doc.name} - " + string(obj_game.points(true, false))
				+ "\nPrevious Highscore: " + $"{_doc1.name} - {_doc1.score}");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);