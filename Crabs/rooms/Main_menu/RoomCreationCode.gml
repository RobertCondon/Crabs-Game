
global.Current_hat = 0;
if global.MusicPlay = true{
	audio_stop_all();
	audio_play_sound(snd_Main_menu, 1, true)

}else{
	audio_stop_all();
}