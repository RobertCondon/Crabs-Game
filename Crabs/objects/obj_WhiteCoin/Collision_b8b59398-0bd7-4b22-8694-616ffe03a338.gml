/// @description Insert description here
// You can write your code in this editor
global.white_pearl += 1;
if global.MusicPlay == true{
	audio_play_sound(snd_WhitePearl, 4, false);
}
instance_destroy()