// Inherit the parent event
event_inherited();

switch (global.screentoggle) {
	case true:
	global.screentoggle = false;
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, spr_help2);
	break;
	
	case false:
	global.screentoggle = true;
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, spr_help_screen);
	break;
}