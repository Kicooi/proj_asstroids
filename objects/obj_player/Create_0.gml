
selfactive = true; // Variable used to check if ship is active
if global.load_state == false {
	global.invulnerable = true;
	invulnerable = global.invulnerable;
	powerupalarm = 0;
	powerup = 0;
} else if global.load_state == true {
	global.invulnerable = invulnerable;
	global.shipspeed = shipspeedtemp;
}

invulnflash = 0;

if global.invulnerable == true and invulnflash == 0 {
	alarm[1] = 10;
	image_alpha = .9;
} else if global.invulnerable == true and invulnflash == 1 {
	alarm[2] = 10;
	image_alpha = .5;
}
