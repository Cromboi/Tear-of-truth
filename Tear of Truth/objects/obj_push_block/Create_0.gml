/// @description Insert description here
// You can write your code in this editor

snap_x = 1;
snap_y = 1;

move_spd = 0.1;

move_timer = 10;

states = {
	idle : 0,
	left : 1,
	right : 2,
	up : 3,
	down : 4,
}

state = idle;


dir_top_right = point_direction(x, y, bbox_right, bbox_top);
dir_top_left = point_direction(x, y, bbox_left, bbox_top);

dir_bottom_right = point_direction(x, y, bbox_right, bbox_bottom);
dir_bottom_left = point_direction(x, y, bbox_left, bbox_bottom);


