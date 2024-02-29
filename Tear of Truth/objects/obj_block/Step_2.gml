/// @description Insert description here
// You can write your code in this editor

var _col_list = ds_list_create();
var _num = collision_rectangle_list(bbox_left,bbox_bottom,bbox_right,bbox_top,obj_effected_by_walls,false,true,
	_col_list, false);
	
if _num > 0
{
    for (var _i = 0; _i < _num; ++_i;)
    {
		var _dir_obj = point_direction(x, y, _col_list[| _i].x, _col_list[| _i].y);
        //check right
		if(_dir_obj >= dir_bottom_right || _dir_obj <= dir_top_right) _col_list[| _i].x += (bbox_right - _col_list[| _i].bbox_left);		
		//check top
		if(_dir_obj >= dir_top_right && _dir_obj <= dir_top_left) _col_list[| _i].y += (bbox_top - _col_list[| _i].bbox_bottom);
		// check left
		if(_dir_obj >= dir_top_left && _dir_obj <= dir_bottom_left) _col_list[| _i].x += (bbox_left - _col_list[| _i].bbox_right);
		//check bottom
		if(_dir_obj <= dir_bottom_right && _dir_obj >= dir_bottom_left) _col_list[| _i].y += (bbox_bottom - _col_list[| _i].bbox_top);
    }
}		
ds_list_destroy(_col_list);



