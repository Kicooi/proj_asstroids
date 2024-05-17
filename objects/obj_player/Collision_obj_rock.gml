// When the player collides with a rock, destroy the ship and reset the game//
if global.paused == false and global.invulnerable == false {
	effect_create_above(ef_firework, x, y, 1, c_white); // Creates an explosion effect in place of the ship
	instance_destroy(); // Destroys the ship
	global.shipdead = true;
	global.lives--; 
	if powerup == 0 {
		global.powerupCounter = 0; 
	}
	obj_game.alarm[0] = 120; // Calls the alarm event in obj_game, and sets it to 2 seconds
							 // This will cause the room to reset, as well as the points value
}