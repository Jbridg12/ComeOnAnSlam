/// @description Insert description here
// You can write your code in this editor

// KEEP IN MIND PLAYER STARTING POSITIONS ARE 
// SPECIFIED IN ROOM CREATION CODE

// Inherit the parent event
event_inherited();

//---------------------------Global Flags---------------------------
frozen = false;
gui_enabled = true;
image_speed = 1;

//------------------------------------------------------------------

//--------------------Progression Upgrade Flags---------------------

ranged_enabled = false;
wall_jump_enabled = false;
charge_attack_enabled = true;
dummy_enabled = false;
charged_vert_enabled = true;


//------------------------------------------------------------------

//-----------------------Combat Parameters---------------------------

attacking_enable_collision = false;
active_hitbox = noone;
invulnerable = false;
knockback_force = 0;


// Ranged Control
in_ranged = false;
ranged_rotation_speed = 2;
ranged_angle = 180;
max_ammo = 5;
current_ammo = max_ammo;
ammo_countdown = 300;

// Charge Control
charge_timer = 0;
timer_max = 90;
charging = false;

//------------------------------------------------------------------

//-----------------------------GUI----------------------------------
// Health Bar size coordinates
healthbar_height = 24;

// Health bar offsets
healthbar_offset_x = 40;
healthbar_offset_y = 20;

// Ammo Coordinate
initial_ammo_x = 32;
initial_ammo_y = 80;
ammo_offset_x = 64;
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

// Save last safe grounded position for hazard interaction
safe_x = x;
safe_y = y;
safety_timer = 0;

// Forced player positons when loading rooms (saves / transitions)
forced_x = -1;
forced_y = -1;

// Cooldown on inputs after hitting hazard
hazard_cooldown = 0;

// Past Frame Location for hitbox tracking
last_x = x;
last_y = y;

// Hitbox Bounce Speed
bounce_speed = -15;

// Charge Jump Parameters
charging_jump = false;
charge_jump_timer = 0;
charge_jump_speed = -100;


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