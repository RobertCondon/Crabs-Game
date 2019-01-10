/// @description Insert description here
// You can write your code in this editor
//Keyboard 


menu_move = (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
if(menu_move == 0){
	menu_move = (keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A")));
}
menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;


//Mouse

if point_in_rectangle(mouse_x, mouse_y, menu_x, menu_y + add_y, menu_x + button_width, menu_y + add_y + button_h){ 
	menu_index = 0;
	
}
if point_in_rectangle(mouse_x, mouse_y, menu_x + (add_x * 1), menu_y + add_y, menu_x + (add_x * 1) + button_width, menu_y + add_y + button_h){
	menu_index = 1;
	
}
if point_in_rectangle(mouse_x, mouse_y, menu_x + (add_x * 2), menu_y + add_y, menu_x + (add_x * 2) + button_width, menu_y + add_y + button_h){
	menu_index = 2;
	
}
if point_in_rectangle(mouse_x, mouse_y, menu_x + (add_x * 3), menu_y + add_y, menu_x + (add_x * 3) + button_width, menu_y + add_y + button_h){
	menu_index = 3;
	
}
if point_in_rectangle(mouse_x, mouse_y, menu_x + (add_x * 4), menu_y + add_y, menu_x + (add_x * 4) + button_width, menu_y + add_y + button_h){
	menu_index = 4;
	
}

if (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter)){
	switch(menu_index){
	case 0:
		room_goto(rm_Level1_Opening);
		break
	case 1:
		room_goto(rm_Level1_TEST);
		break;
	case 2:
		room_goto(Credits);
		break;
	case 3:
		instance_create_depth(416, 160, 0, obj_Options);
		instance_destroy();
		break;
	case 4:
		game_end();
		break;
	}
}



