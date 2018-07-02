/// @description Insert description here
// You can write your code in this editor
draw_self()
if(flash > 0){
	
	flash -= 0.03
	//Makes it neoony
	//gpu_set_blendmode(bm_add)
	
	shader_set(shd_WaveLight)
	shade_alpha = shader_get_uniform(shd_WaveLight, "_alpha");
	shader_set_uniform_f(shade_alpha, flash)
	
	draw_self()
	shader_reset()
	
	//gpu_set_blendmode(bm_normal)
}

if(keyboard_key_press(ord("P"))){
		draw_rectangle(x-32, y-32, x+32, y+32,true)
		draw_rectangle(x-SquareX, y-20, x+SquareX+1, y+32,true)
		draw_line(x, y, x+Xline, y)
		draw_line_color(x, y, x+Xline, y, c_white, c_black)
		draw_line_width(x, y+31, x+Xline, y+31, 1)

}
draw_rectangle(x-32, y-31, x+32, y+33, true)
draw_line(x-20, y+32, x+21, y+32)
draw_line_color(x, y+30, x+Xline, y+30, c_red, c_red)
draw_ellipse_color(x-26, y+32, x+27, y+13, c_fuchsia, c_fuchsia, true)
//The bottom collision line
draw_rectangle_color(x-23, y+32+vsp, x+23, y+20, c_orange, c_orange, c_orange, c_maroon, true)
