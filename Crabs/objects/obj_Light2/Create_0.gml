Raidus = 0.5;
lx = x;       // the light position
ly = y;
rad = 50;           // the radius of the light
Buffer = 4;
tilemap = layer_tilemap_get_id("GroundTileFlavour");
surf = -1;
LightPosRadius = shader_get_uniform(sh_dyn_lighting,"u_fLightPositionRadius");

if( !surface_exists(surf) ){
	surf = surface_create(obj_Camera.WidthRoom+Buffer, obj_Camera.HeightRoom+Buffer);
}

// sets surface for shader purposes
surface_set_target(surf);
draw_clear_alpha(0,0);


surface_reset_target();

follow = noone;