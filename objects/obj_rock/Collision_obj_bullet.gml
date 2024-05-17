obj_game.points(false, false); // Calling the points method during collision with 
							   //bullet causes points to increase by one
global.score = obj_game.points(true,false);
global.powerupCounter++;							   

instance_destroy(other); // Destroys bullet object
effect_create_above(ef_explosion, x, y, 1, c_white); // Creates an explosion effect in place of bullet

direction = random(360); // Collision with bullet causes rocks to move in different directions
					
selfdir = direction;
audio_play_sound(Blip2, 0, false);

if sprite_index == spr_rock_big // Checks if rock is big or small
{
	sprite_index = spr_rock_small; // Changes the sprite of the rock from big to small
	instance_copy(true); // Creates a copy of the rock (which should now be small, thus creating the split effect)
} else if instance_number(obj_rock) < 16 and global.killer == true {
	if global.shipdead == false {
	x = -150;
	y = random(1000);
	move_towards_point(obj_player.x, obj_player.y, 6);
	tempspeed = 6;
	}
	global.killer = false;
	obj_1god_game.alarm[0] = 1200;
	
} else if instance_number(obj_rock) < 12 // Checks if there are too many rocks or not, only runs from small rocks
{ //This function creates the effect of spawning a new big rock somewhere else 
	sprite_index = spr_rock_big;
	x = random_range(-160, -42);
	y = random_range(-1000, 1000);
}
else // If there are more than 12 rocks and the rock that was hit was small, this runs
{
	instance_destroy(); //destroys the small rock
}

if global.powerupCounter == 20 {
		instance_create_layer(x, y, "Instances", obj_powerup);
}

if global.rand == 42 { // 1:150
	instance_create_layer(x,y, "Instances", obj_relic);
}

var _rand = irandom(750);
if (_rand == 420) {
	instance_create_layer(x,y, "Instances", obj_relic2);
	show_debug_message(string(_rand) + ":2");
} else {
	show_debug_message(string(_rand) + ":2");
}

_rand = irandom(1500);
if (_rand == 420) {
	instance_create_layer(x,y, "Instances", obj_relic3);
	show_debug_message(string(_rand) + ":3");
} else {
	show_debug_message(string(_rand) + ":3");
}

_rand = irandom(5000);
if (_rand == 4269) {
	instance_create_layer(x,y, "Instances", obj_relic4);
	show_debug_message(string(_rand) + ":4");
} else {
	show_debug_message(string(_rand) + ":4");
}

show_debug_message(string(global.rand) + ":1");
oneup_dropper();