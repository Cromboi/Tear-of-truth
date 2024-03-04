/// @description Insert description here
// You can write your code in this editor

view_camera[0] = camera_create();
view_width = 240;
view_height = 160;


window_set_size(view_width * global.settings.winscale , view_height * global.settings.winscale);
surface_resize(application_surface, view_width * global.settings.winscale, view_height * global.settings.winscale);

states = {
	spawn : 0,
	follow_focal_point : 1,
}
state = states.spawn;
spawn_timer = 5;

if(instance_exists(obj_camera_focal_point)){
	var _x = clamp(obj_camera_focal_point.x-view_width/2, 0, room_width  - view_width);
	var _y = clamp(obj_camera_focal_point.y-view_height/2, 0, room_height - view_height);
			
	var _cur_x = camera_get_view_x(view_camera[0]);
	var _cur_y = camera_get_view_y(view_camera[0]);
	
	var _spd = .3;
	camera_set_view_pos(view_camera[0],
						lerp(_cur_x,_x,_spd),
						lerp(_cur_y,_y,_spd));
} else {
	exit;
}


