/// @description PAUSE
if(obj_Player.Talking == false){
	if(global.stop == false){
		audio_play_sound(snd_Effect_Pause, 2, false)
		audio_pause_sound(global.LevelMuisc);
		audio_play_sound(snd_Music_PauseMusic,1,true);
		global.stop = true
	}else{
		audio_play_sound(snd_Effect_UnPause, 2, false);
		audio_stop_sound(snd_Music_PauseMusic);
		audio_resume_sound(global.LevelMuisc);
		global.stop = false
	}
}