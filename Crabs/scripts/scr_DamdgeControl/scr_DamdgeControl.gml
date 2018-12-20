//How the hp works in the game

hp = obj_Player.hp
alarmActive = obj_Player.alarmActive
visableness = obj_Player.visableness

if(hp == 1){
		if alarmActive == true{
			audio_play_sound(snd_Effect_TookDamdge, 2, false);
			obj_Player.alarm[1] = 2
			obj_Player.alarm[0] = 200
		}
		alarmActive = false
	}else if hp == 0{
		audio_play_sound(snd_Effect_TookDamdge, 2, false);
		show_message("You lose")
		game_restart()
	}
	if visableness == false{
		obj_Player.visible = false
	}else{
		obj_Player.visible = true
	}