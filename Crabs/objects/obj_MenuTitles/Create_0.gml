/// @description Insert description here
// You can write your code in this editor
menu_x = x - 300
menu_y = y;
button_h = 50;
button_width = 125;
button_padding = 24;

//button
button[0] = "New Game";
button[1] = "Level Select";
button[2] = "Credits";
button[3] = "Options";
button[4] = "Quit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons){
	unfold[i] = 0;
	i++;
}
//Partical Effects
part_menuSys = part_system_create();
part_system_depth(part_menuSys, -1000);

part_menu = part_type_create();
part_type_shape(part_menu, pt_shape_cloud);
part_type_size(part_menu, 2, 2, -0.009, 0);
part_type_color3(part_menu, make_color_rgb(128,255,0), make_color_rgb(0,128,255), make_color_rgb(128,255,255));
part_type_alpha3(part_menu, 0.25, 0.3, 0);
part_type_blend(part_menu, true);
part_type_life(part_menu,20,20);