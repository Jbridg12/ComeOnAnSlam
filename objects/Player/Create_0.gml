/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

activeAnimation = -1;
sequenceLayer = -1;
activeSequence = -1;

StartAnimation = function (_sequence) {
	activeAnimation = _sequence;
	//sequenceLayer = layer_create(depth-1);
	activeSequence = layer_sequence_create(layer_get_id("Platforms"), x+(16*orientation), y, _sequence);
	layer_sequence_xscale(activeSequence, orientation);
	
	in_animation = true;
}

CheckAnimation = function () {
	if (activeSequence == undefined) return;
	
	if (layer_sequence_is_finished(activeSequence)) {
		layer_sequence_destroy(activeSequence);
		//layer_destroy(sequenceLayer);
		activeAnimation = -1;
		activeSequence = -1;
		sequenceLayer = -1;
		
		in_animation = false;
	}
}


weapon_reference = BBall;