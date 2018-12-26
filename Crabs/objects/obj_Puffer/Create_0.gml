/// @description Insert description here
// You can write your code in this editor
walksp = 0.5;
hp = 5;
Killed = false;
Has_Hit = 1;
BigBang = false
ForwardORBack = 30;
stun = false;
stuned = false;
shd_VarSpriteHeight = shader_get_uniform(shd_StunLock, "pixelH"); 
shd_VarSpriteWidth = shader_get_uniform(shd_StunLock, "pixelW");
texualWidth = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texualHeight = texture_get_texel_height(sprite_get_texture(sprite_index,0));