if global.MusicPlay = true{
	audio_stop_all();
	audio_play_sound(snd_Music_StartCutScene, 1, true)
	global.LevelMuisc = snd_Music_StartCutScene;
}else{
	audio_stop_all();
}