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
//New shit
planner = instance_create_layer(x, y, "ShaderBeforeStart_1", obj_StingRayPlanner);
planner.follower = id;