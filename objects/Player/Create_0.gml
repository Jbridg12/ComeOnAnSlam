/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//---------------------------Global Flags---------------------------

frozen = false;

//------------------------------------------------------------------

//-------------------------Health Bar-------------------------------
// Health Bar size coordinates
healthbar_height = 24;

// Health bar offsets
healthbar_offset_x = 40;
healthbar_offset_y = 20;
//------------------------------------------------------------------

//---------------------------Movement-------------------------------
// Hanging Parameters for movement
hanging = false;
hanging_timer = 0;
hanging_forgiveness = 20;
wall_jump = false;

// Side of Hang: -1 left, 0 none, 1 right
hanging_side = 0;

//Different Speed Parameters for movement calc
walk_speed = 3;
sprint_speed = 6;
jump_speed = -10;
float_speed = 0.5;
vine_shimmy_speed = 2;

// Holding Jump lets you jump longer without gravity for x frames
max_jump = 10;
curr_jump = 0;

//------------------------------------------------------------------


//-----------------------Vine Interaction---------------------------

on_vine = false;
attached_vine = noone;
attached_length = 0;
attached_angle = 0;
vine_cooldown = -1;

//------------------------------------------------------------------


//----------------Animation Control-------------------------------
// Animation object instantiation
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
//------------------------------------------------------------------