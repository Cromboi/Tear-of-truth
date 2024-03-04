// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function initialize_settings(){
	var _fname = "settings.ini";
	ini_open(_fname);
	global.settings = {
		winscale : ini_read_real("prefs", "winscale", 2),
		master_volume : ini_read_real("prefs", "master_volume", 0.5),
		sfx_volume : ini_read_real("prefs", "SFX_volume", 0.5),
		music_volume : ini_read_real("prefs", "music_volume", 0.5)
	}
ini_close();
}


function Save_Settings(){
	var _fname = "settings.ini";
	ini_open(_fname);
	ini_write_real("prefs", "winscale", global.settings.winscale);
	ini_write_real("prefs","master_volume", global.settings.master_volume);
	ini_write_real("prefs","SFX_volume", global.settings.sfx_volume);
	ini_write_real("prefs","music_volume", global.settings.music_volume);
	ini_close();
}
