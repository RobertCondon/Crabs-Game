/// @description Insert description here
// You can write your code in this editor
distance_player = distance_to_object(o_Player);
pass = keyboard_check(vk_enter);
if (distance_player <= los)
{
	sprite_index = spr_Hermy_Talk_Neutral
	if HasDone == false{
		global.stop = true
		if(pass){
			global.stop = false;
			HasDone = true;
		}
	}
}else{
	sprite_index = spr_Hermy_Idle_1
}