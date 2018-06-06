/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch(menu_index){
	case 0:
		if global.Invert == true{
			global.Invert = false
		}else{
			global.Invert = true
		}
		break
	case 1:
		if global.MusicPlay == true{
			global.MusicPlay  = false
			audio_stop_all();
		}else{
			global.MusicPlay  = true
			audio_play_sound(snd_Main_menu, 1, true)
		}
		break;
	case 2:
		instance_create_depth(416, 160, 0, obj_MenuTitles)
		instance_destroy();
		break;
}
