/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_space){
	if(IncrementStringAmount < string_length(Text[page])){
		IncrementStringAmount = string_length(Text[page])
	}else{
		if(array_length_1d(Text)-1 > page){
			page += 1;
			CurrentX = spriteStartX
			CurrentY = spriteStartY
			TotalLetters = 0;
			i = 0;
			TotalFromString = 0;
			IncrementStringAmount = 0;
			if InstanceThatMadeIt != noone{
				InstanceThatMadeIt.ArrayDone = false
				//IconArray[0].Restart = true;
			}
		}else{
			InstanceThatMadeIt.ArrayDone = true
			if(DestoryMe == true) {
				instance_destroy();	
				obj_Camera.follow = obj_Player;
			}
			alarm[0] = 120;
		}
	}
}
//IconArray[0].TotalSayings = Text[page];
//IconArray[0].IncrementStringAmount = IncrementStringAmount;