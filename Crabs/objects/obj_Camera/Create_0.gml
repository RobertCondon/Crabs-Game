/// @description Insert description here
// You can write your code in this editor
WidthRoom = 960;
HeightRoom = 540;

HermyWidth = 480
HermyHeight = 270;

PlayerOffSet = 250;


PlayerVision = true;
camera = camera_create();

var vm = matrix_build_lookat(x, y, -10, x,y, 0,0,1,0);
var pm = matrix_build_projection_ortho(WidthRoom, HeightRoom, 1, 10000000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera
view_wport[0] = display_get_width();
view_hport[0] = display_get_width();
follow = obj_Player;
xTo = x;
yTo = y;

Hermy = noone