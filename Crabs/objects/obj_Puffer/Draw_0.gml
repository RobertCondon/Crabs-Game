/// @description Insert description here
// You can write your code in this editor
if(stun == true and hp > 0) {
	shader_set(shd_StunLock);
	shader_set_uniform_f(shd_VarSpriteWidth, texualHeight); 
    shader_set_uniform_f(shd_VarSpriteHeight, texualWidth);
	draw_self();
	shader_reset();
} else {
	draw_self();	
}