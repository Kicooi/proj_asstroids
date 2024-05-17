function save_game(){
	
	var _array = [];
	
	with (obj_player) {
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_angle: image_angle,
			direction: direction,
			powerup: powerup,
			shipspeedtemp: shipspeedtemp,
			selfactive: selfactive,
			invulnerable: invulnerable,
			powerupalarm: powerupalarm,
		};
		array_push(_array, _struct);		
	}
	
	with (obj_rock) {
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_angle: image_angle,
			sprite_index: sprite_index,
			direction: direction,
			selfactive: selfactive,
			tempspeed : tempspeed,
		};
		array_push(_array, _struct);		
	}
	
	with (obj_bullet) {
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_angle: image_angle,
			direction: direction,
			selfactive: selfactive,
			bulletspeed: bulletspeed,
		};
		array_push(_array, _struct);		
	}
	
	with (obj_powerup) {
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_angle: image_angle,
			direction: direction,
			selfactive: selfactive,
		};
		array_push(_array, _struct);		
	}
	
	with (obj_1up) {
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_angle: image_angle,
			direction: direction,
			selfactive: selfactive,
		};
		array_push(_array, _struct);		
	}
	
	with (obj_game) {
		var _struct = {
			object: object_get_name(object_index),
			x: x,
			y: y,
			localscore: localscore,
			locallives: locallives,
			powerupCounter: powerupCounter,
			controls_settings: controls_settings
		};
		array_push(_array, _struct);		
	}	
	var _string = json_stringify(_array)
	var _file = file_text_open_write("save.txt");
	file_text_write_string(_file, _string);
	file_text_close(_file);
}

function load_game(){
	if (file_exists("save.txt")) {
		
		var _file = file_text_open_read("save.txt");
		
		var _json = file_text_read_string(_file);
		
		var _array = json_parse(_json);
		
		instance_destroy (obj_player);
		instance_destroy (obj_rock);
		instance_destroy(obj_bullet);
		instance_destroy(obj_powerup);
		instance_destroy(obj_1up);
		instance_destroy(obj_game);
		
		for (var i = 0; i < array_length(_array); i += 1) {
			var _struct = _array[i];
			instance_create_layer(_struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);	
		}
						
		file_text_close(_file);		
	}
}