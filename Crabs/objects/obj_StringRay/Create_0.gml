/// @description Insert description here
// You can write your code in this editor
/*var cell_width = 64;
var cell_height = 64;

var vcells = room_width div cell_width;
var hcells = room_height div cell_height;
global.Raygrid = mp_grid_create(0,0, hcells, vcells, cell_width, cell_height);

mp_grid_add_instances(global.Raygrid, o_Sand, false);

//Enemy things
path = path_add();

//Looking for you
Looked = false;
*/
//ShaderBeforeStart_1
//New shit
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

//triangle things

coneOfSightLength = 384