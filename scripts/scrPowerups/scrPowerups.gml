function powerup_multishot() {
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	_bullet.direction += 10;
	_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	_bullet.direction -= 10;
}

function oneup_dropper(){
	if obj_game.points(true, false) == 10 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}

	if obj_game.points(true, false) == 30 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}

	if obj_game.points(true, false) == 60 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}

	if obj_game.points(true, false) == 120 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}

	if obj_game.points(true, false) == 240 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}

	if obj_game.points(true, false) == 480 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}

	if obj_game.points(true, false) == 960 {
		instance_create_layer(random_range((room_width-room_width)+10, room_width-10), fa_top, "Instances", obj_1up);
	}
}