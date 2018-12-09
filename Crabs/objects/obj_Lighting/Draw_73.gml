/// @description Insert description here
// You can write your code in this editor
if surface_exists(Surface_Lighting) {
	var cx = round(camera_get_view_x(obj_Camera.camera) - Buffer/2);
	var cy = round(camera_get_view_y(obj_Camera.camera) - Buffer/2);
	
	surface_set_target(Surface_Lighting);
	
	draw_clear_alpha(make_color_hsv(0, 0, 240), 1);
	gpu_set_blendmode(bm_add)
	draw_triangle_color(mouse_x-cx-100, mouse_y-cy+100, mouse_x-cx+100, mouse_y-cy+100, mouse_x-cx, mouse_y-cy, c_black, c_black, c_white, 0);
	
	
	with(obj_WindowLight) {
		draw_circle_color(x-cx, y-cy, 130,c_black, c_white, 0);
	}
	with(obj_WindowLightTriangle) {
		draw_triangle_color(x-cx-Width, y-cy+Height, x-cx+Width,y-cy+Height,x-cx,y-cy, make_color_hsv(255, 255, 240), make_color_hsv(0, 0, 10), make_color_hsv(0, 0, 10), 0);
	}
	
	/*with(obj_JellyFish_BlueGreen64) {
		draw_circle_color(x-cx, y-cy, 32, make_color_rgb(64,186,253),make_color_rgb(64,186,253), 0)
	}*/
	
	surface_reset_target();
	
	gpu_set_blendmode_ext(bm_zero, bm_subtract);
	draw_surface(Surface_Lighting, cx, cy)
	
	gpu_set_blendmode(bm_normal)
	
} else {
	Surface_Lighting = surface_create(camera_get_view_width(obj_Camera.camera)+Buffer, camera_get_view_height(obj_Camera.camera)+Buffer);
	
}
	