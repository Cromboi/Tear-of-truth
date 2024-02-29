// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Exists
function exists_save_file(){
	var _fname = "ToT_Save_Data.json";
	if(file_exists(_fname)){
		return 1;
	} else {
		return 0;
	}
}

// Create
function create_save_file(){
	global.save_data = ds_map_create();
	ds_map_add(global.save_data,"file_exists",1);
	
	update_save_file();
}

// Update
function update_save_file(){
	var _fname = "ToT_Save_Data.json";
	ds_map_secure_save(global.SaveData, _fname);
}

// Delete
function delete_save_file(){
	var _fname = "ToT_Save_Data.json";
	file_delete(_fname);
}

// Load
function load_save_file(){
	global.save_data = ds_map_create();
	var _fname = "ToT_Save_Data.json";
	global.save_data = ds_map_secure_load(_fname);
}

// Unload
function unload_save_file(){
	ds_map_destroy(global.save_data);
}
