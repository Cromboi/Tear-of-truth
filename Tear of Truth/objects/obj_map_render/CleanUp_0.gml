/// @description Insert description here
// You can write your code in this editor
/*

// re-purpose this code!!! 

if(!surface_exists(present_surface)){
	present_surface = surface_create(room_width, room_height);
	
}

surface_set_target(present_surface);


draw_clear_alpha(c_black, 1);

with(O_Lighting_Cutout){
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y,1,1,0,-1,1);
	
	gpu_set_blendmode_ext(bm_dest_color, bm_inv_src_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y,1,1,0,-1,1);
	
}
with(O_Lighting_Cutout_Player_Follower){
	gpu_set_blendmode(bm_subtract);
	//gpu_set_blendmode_ext(bm_src_color,bm_dest_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y,image_xscale,image_yscale,0,c_white,1);
	
	gpu_set_blendmode_ext(bm_dest_color, bm_inv_src_alpha);
	//gpu_set_blendmode_ext(bm_dest_color, bm_zero);
	draw_sprite_ext(sprite_index, image_index, x, y,image_xscale,image_yscale,0,-1,1);
	
}

gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(lighting_surface, 0, 0);

*/

