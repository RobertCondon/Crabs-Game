/// @description Insert description here
// You can write your code in this editor
//Can change to 32 if wanted incase
global.Raygrid = mp_grid_create(0,0, room_width/64, room_height/64, 64, 64);

mp_grid_add_instances(global.Raygrid, o_Sand, false);