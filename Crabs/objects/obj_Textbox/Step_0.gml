/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_enter){
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