/// @description Insert description here
// You can write your code in this editor
draw_self();
if(keyboard_check_pressed(ord("P"))) {
	if(DrawIt == false) {
		DrawIt = true;
	} else {
		DrawIt = false;	
	}
}
if(DrawIt == true) {
	//draw_rectangle(x + x_Width , y + y_Height -14, x - x_Width , y - y_Height - 14, true);	
	draw_line(x + x_Width, y - y_Height - 14, x - x_Width, y - y_Height - 14);
	draw_rectangle(x + x_Width , y + y_Height -14, x - x_Width, y + y_Height + 14, true);
}