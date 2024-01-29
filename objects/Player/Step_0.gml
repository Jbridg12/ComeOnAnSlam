/// @description Player processes on every update tick of the game.
// You can write your code in this editor

movement_input()


// Update position by speed

if(delta_x != 0) orientation = sign(delta_x);


calculate_movement();