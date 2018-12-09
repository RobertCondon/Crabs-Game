/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_Effect_Eel_Death,2,false);
with (instance_create_layer(x, y, "MovingPlatfroms", obj_ElectricEelDying)) {
	direction = other.image_angle;
	image_angle = direction ;
}
instance_destroy();