/// @description Insert description here
// You can write your code in this editor
menu_move = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;


var i = 0;
repeat(buttons){
	if (unfold[i] == 1) i++;
	
	if (i < buttons) unfold[i] = min(1, unfold[i] + .009);
	if (i+1 < buttons) unfold[i+1] = min(1, unfold[i+1] + .0005);
}

if (menu_index != last_selected){
	if menu_index == 2{
	part_type_size(part_menu, 1.5, 1.5, -0.02, 0);	
	}
	else{
		if menu_index == 3{
		part_type_size(part_menu, 1, 1, -0.02, 0);
		}else{
			part_type_size(part_menu, 2, 2, -0.02, 0);
		}
	}
	part_particles_create(part_menuSys, menu_x + 60 + (90 + button_padding + button_width/2) * menu_index, menu_y + 125, part_menu, 1);
}
//if (menu_index != last_selected) auido_play_sound

last_selected = menu_index