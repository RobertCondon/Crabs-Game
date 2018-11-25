/// @description Insert description here
// You can write your code in this editor
// if obj_initialize has initialized the level
//show_debug_message(LightPosRadius);
if(surface_exists(surf)){	
	shader_set(sh_dyn_lighting);
	shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.5 );
	draw_surface_ext(surf,0,0,1,1,0,image_blend,0.5);
	shader_reset();
}

