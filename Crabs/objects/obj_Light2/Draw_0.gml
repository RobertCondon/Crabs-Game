/// @description Insert description here
// You can write your code in this editor
// if obj_initialize has initialized the level
//show_debug_message(LightPosRadius);
if(surface_exists(surf)){	
	shader_set(sh_dyn_lighting);
	shader_set_uniform_f( LightPosRadius, lx,ly,rad,Raidus );
	var cx = round(obj_Camera.x-obj_Camera.WidthRoom/2);
	var cy = round(obj_Camera.y-obj_Camera.HeightRoom/2);
	
	draw_surface_ext(surf,cx,cy,1,1,0,image_blend,Raidus);
	shader_reset();
}
show_debug_message(obj_Camera.x)
show_debug_message(obj_Camera.y)


