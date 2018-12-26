
// if obj_initialize has initialized the level
//show_debug_message(LightPosRadius);
if(surface_exists(surf)){	
	shader_set(sh_dyn_lighting);
	shader_set_uniform_f( LightPosRadius, lx,ly,rad,Raidus );
	var cx = round(obj_Camera.x-obj_Camera.WidthRoom/2);
	var cy = round(obj_Camera.y-obj_Camera.HeightRoom/2);
	
	if(obj_Camera.WideShot == true) {
		if(!surface_exists(WideSurface)){
			WideSurface = surface_create(obj_Camera.WideShotWidth+Buffer, obj_Camera.WideShotHeight+Buffer);
			surface_set_target(surf);
			draw_clear_alpha(0,0);
			surface_reset_target();
		}
		draw_surface_ext(WideSurface,cx,cy,1,1,0,image_blend,Raidus);
	} else {
		if(surface_exists(WideSurface)) {
			surface_free(WideSurface);
			WideSurface = -1;
		}
		draw_surface_ext(surf,cx,cy,1,1,0,image_blend,Raidus);
	}
	
	shader_reset();
}


