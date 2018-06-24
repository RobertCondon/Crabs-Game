/// @description Insert description here
// You can write your code in this editor
distance_player = distance_to_object(obj_Player);
pass = keyboard_check_released(vk_enter);
if(pass){
	if(global.stop = true){
		global.stop = false
	}
}
if (distance_player <= los)
{
	sprite_index = spr_Hermy_Talk_Neutral
	if Done == false{
		global.stop = true
		obj_Camera.follow = self;
		obj_Camera.PlayerVision = false;
		if(pass){
			global.stop = false;
			Done = true;
			obj_Camera.follow = obj_Player;
			obj_Camera.PlayerVision = true;
		}
	
	}
}else{
	sprite_index = spr_Hermy_Idle_1
}