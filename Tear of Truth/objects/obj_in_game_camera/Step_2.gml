/// @description Insert description here
// You can write your code in this editor

camera_set_view_size(view_camera[0], view_width, view_height);


switch(state){
	case states.spawn:
		if(spawn_timer<15){
			if(instance_exists(obj_camera_focal_point)){
				var _x = clamp(obj_camera_focal_point.x-view_width/2, 0, room_width - view_width);
				var _y = clamp(obj_camera_focal_point.y-view_height/2, 0, room_height - view_height);
			
				var _cur_x = camera_get_view_x(view_camera[0]);
				var _cur_y = camera_get_view_y(view_camera[0]);
	
				var _spd = .6;
				camera_set_view_pos(view_camera[0],
									lerp(_cur_x,_x,_spd),
									lerp(_cur_y,_y,_spd));
			}
		}
		if(spawn_timer <= 0){
			state = States.follow_player;
		}
		spawn_timer--;
	break;
	
	case states.follow_focal_point:
		if(instance_exists(obj_camera_focal_point)){
			var _p_dir =  obj_camera_focal_point.direction;
			var _fp_x = obj_camera_focal_point.x ;
			var _fp_y = obj_camera_focal_point.y ;
			
			var _x = clamp(_fp_x -view_width/2, 0, room_width  - view_width);
			var _y = clamp(_fp_y -view_height/2, 0, room_height - view_height);
			
			var _cur_x = camera_get_view_x(view_camera[0]);
			var _cur_y = camera_get_view_y(view_camera[0]);
	
			var _spd = .1;
			camera_set_view_pos(view_camera[0],
								lerp(_cur_x,_x,_spd),
								lerp(_cur_y,_y,_spd));
		}
	break;

}