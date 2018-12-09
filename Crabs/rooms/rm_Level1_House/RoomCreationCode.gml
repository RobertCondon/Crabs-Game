if global.MusicPlay = true{
	audio_stop_all();
	audio_play_sound(snd_Music_StartingRoom, 1, true)
	global.LevelMuisc = snd_Music_StartingRoom;

}else{
	audio_stop_all();
}
