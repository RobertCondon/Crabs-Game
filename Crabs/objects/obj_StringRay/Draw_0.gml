/// @description Insert description here
// You can write your code in this editor


//draw_triangle_color(x, y, x+lengthdir_x(coneOfSightLength,image_angle-25), y+lengthdir_y(coneOfSightLength,image_angle-25), x+lengthdir_x(coneOfSightLength,image_angle+25), y+lengthdir_y(coneOfSightLength,image_angle+25), c_fuchsia, c_fuchsia, c_fuchsia, false);
if(stun == true) {
	shader_set(shd_StunLock);
	shader_set_uniform_f(shd_VarSpriteWidth, texualHeight); 
    shader_set_uniform_f(shd_VarSpriteHeight, texualWidth);
	draw_self();
	shader_reset();
	
} else {
	draw_self();
}
