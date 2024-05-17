/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.paused == true {
	
	global.paused = false;

	instance_deactivate_layer("pause_menu");
	instance_deactivate_object(obj_select);

}