/// @description Insert description here
// You can write your code in this editor
/*var cell_width = 6*/
if(!instance_exists(obj_StingRayControler)) {
	instance_create_layer(x,y, "ShaderBeforeStart_1", obj_StingRayControler);
}


planner = instance_create_layer(x, y, "Enemys", obj_StingRayPlanner);
planner.follower = id;

GotPlayer = false;
SavedAngle = 0;

AttackInRange = false;
Attacked = false;
HitThem = false;

stun = false
stuned = false
shd_VarSpriteHeight = shader_get_uniform(shd_StunLock, "pixelH"); 
shd_VarSpriteWidth = shader_get_uniform(shd_StunLock, "pixelW");
texualWidth = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texualHeight = texture_get_texel_height(sprite_get_texture(sprite_index,0));

MyTail = instance_create_layer(x,y,"Enemys", obj_StingRayTail);
with(MyTail) {
	MyBody = other;	
}

Targetx = 896
Targety = 768
MyTarget = noone //Instacen create code;
SecondValues[0] = 2013;
SecondValues[1] = 27;
ThridValues[0] = 1325
ThridValues[1] = 703
FourthValues[0] = 2017
FourthValues[1] = 638

hp = 1;

Changed_angle = false;
//triangle things
Image_angleFixed = image_angle
coneOfSightLength = 384