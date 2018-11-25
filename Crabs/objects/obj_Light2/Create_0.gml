lx = x;       // the light position
ly = y;
rad = 50;           // the radius of the light
tile_size = 32;     // size of a tile
tilemap = layer_tilemap_get_id("GroundTileFlavour");
surf = -1;
LightPosRadius = shader_get_uniform(sh_dyn_lighting,"u_fLightPositionRadius");
startx = floor((lx-rad)/tile_size);
endx = floor((lx+rad)/tile_size);
starty = floor((ly-rad)/tile_size);
endy = floor((ly+rad)/tile_size);

//Vertex buffer
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

if( !surface_exists(surf) ){
	surf = surface_create(room_width,room_height);
}

// sets surface for shader purposes
surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);
for(var yy=starty;yy<=endy;yy++)
{
	for(var xx=startx;xx<=endx;xx++)
	{
	    var tile = tilemap_get(tilemap,xx,yy);
		//var tile_static = tilemap_get(tilemap_static,xx,yy); 
	    if( tile!=0)
	    {
	        // get corners of the 
	        var px1 = xx*tile_size;     // top left
	        var py1 = yy*tile_size;
	        var px2 = px1+tile_size;    // bottom right
	        var py2 = py1+tile_size;
			
			if( !scr_sign_test( px1,py1, px2,py1, lx,ly) ){
			    scr_light_project_shadow(VBuffer,  px1,py1, px2,py1, lx,ly );
			}
			if( !scr_sign_test( px2,py1, px2,py2, lx,ly) ){
			    scr_light_project_shadow(VBuffer,  px2,py1, px2,py2, lx,ly );
			}
			if( !scr_sign_test( px2,py2, px1,py2, lx,ly) ){
			    scr_light_project_shadow(VBuffer,  px2,py2, px1,py2, lx,ly );
			}
			if( !scr_sign_test( px1,py2, px1,py1, lx,ly) ){
			    scr_light_project_shadow(VBuffer,  px1,py2, px1,py1, lx,ly );                      
			}         
	    }
	}
}

vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
surface_reset_target();

