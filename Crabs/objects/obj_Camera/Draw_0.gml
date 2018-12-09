/// @description Insert description here
// You can write your code in this editor
if(FadeIn == true) {
	Alpha -= 0.005;
	draw_set_alpha(Alpha);
	draw_rectangle_color(x-WidthRoom, y-HeightRoom, x+WidthRoom, y+HeightRoom, true, c_black, c_black, c_black, c_black)
	draw_set_alpha(1);
}