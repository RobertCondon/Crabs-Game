/// @description Insert description here
// You can write your code in this editor
draw_self()


if(keyboard_key_press(ord("P"))){
		draw_rectangle(x-32, y-32, x+32, y+32,true)
		draw_rectangle(x-SquareX, y-20, x+SquareX+1, y+32,true)
		draw_line(x, y, x+Xline, y)
		draw_line_color(x, y, x+Xline, y, c_white, c_black)
		draw_line_width(x, y+31, x+Xline, y+31, 1)

}
