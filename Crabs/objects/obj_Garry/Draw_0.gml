/// @description Insert description here
// You can write your code in this editor
draw_self();
if(Draw_Fade == true) {
	
	with (all)
	{    
		if(object_index!=self)
		{
		    shader_set(shd_BlackWhite);
			
		    shader_reset();
		}
	}
}
