/// @description Insert description here
// You can write your code in this editor
menu_x = x - 340;
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

add_x = (150 + button_padding);
add_y = 100;
selected = 0;

