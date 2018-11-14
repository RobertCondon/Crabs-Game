/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, id){
	if(global.Current_hat == 0){
		global.Current_hat = array_length_1d(obj_Hat.Possible_hats)-1
	}else{
		global.Current_hat -= 1
	}
}