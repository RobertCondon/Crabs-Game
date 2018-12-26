/// @description Insert description here
// You can write your code in this editor
menu_x = x;
menu_y = y;
button_h = 34;
button_w = 256;
button_padding = 8;

//Buttons
button[0] = "New Game";
button[1] = "Level Select";
button[2] = "Options";
button[3] = "Credits";
button[4] = "Quit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat (buttons) {
	unfold[i] = 0;
	i ++
}