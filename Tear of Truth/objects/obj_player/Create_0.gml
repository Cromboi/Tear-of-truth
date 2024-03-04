/// @description Insert description here
// You can write your code in this editor

has_control = 1;
is_focal_point = 1;
held_object = noone;

states = {
	spawn : 0,
	idle : 1,
	walk : 2,
	push : 3,
	grab : 4,
	
}

state = states.spawn;

facing_states = {
	up : 90,
	right : 0,
	down : 270,
	left : 180
}
facing_state = facing_states.down;

