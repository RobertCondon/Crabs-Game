/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fnt_Score);



draw_sprite(common_pearl, 0, camera_get_view_x(view_camera[0]) + 20, camera_get_view_y(view_camera[0]) + 20)
draw_text(camera_get_view_x(view_camera[0]) + 50, camera_get_view_y(view_camera[0]) + 31, string(global.white_pearl));

draw_sprite(uncommon_pearl, 0, camera_get_view_x(view_camera[0]) + 80, camera_get_view_y(view_camera[0]) + 20)
draw_text(camera_get_view_x(view_camera[0]) + 110, camera_get_view_y(view_camera[0]) + 31, string(global.black_pearl));
