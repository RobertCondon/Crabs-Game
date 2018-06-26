/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_space){
	if(IncrementStringAmount < string_length(Text[page])){
		IncrementStringAmount = string_length(Text[page])
	}else{
		if(array_length_1d(Text)-1 > page){
			page += 1;
			IncrementStringAmount = 0;
			if InstanceThatMadeIt != noone{
				InstanceThatMadeIt.ArrayDone = false
			}
		}else{
			InstanceThatMadeIt.ArrayDone = true
		}
	}
}