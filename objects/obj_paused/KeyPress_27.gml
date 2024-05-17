if room == rm_game {
	if global.shipdead == false {
		
	
		switch(global.paused){
		
			case false:
			global.paused = true;		
			instance_activate_layer("pause_menu");
			break;
			
			case true:
			global.paused = false;
			instance_deactivate_layer("pause_menu");
			instance_deactivate_object(obj_select);
			break;
		
	
		}
	}
}

if room == rm_menu {
	game_end();
}