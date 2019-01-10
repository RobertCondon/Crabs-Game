/// @description Insert description here
// You can write your code in this editor
CurrentMinY = lengthdir_y(TriMinY, image_angle) + y;
CurrentMinX = lengthdir_x(TriMinX, image_angle) + x;
CurrentLeftY = lengthdir_y(TriLeftY, image_angle) + y;
CurrentLeftX = lengthdir_x(TriLeftX, image_angle) + x;
CurrentRightY = lengthdir_y(TriRightY, image_angle) + y;
CurrentRightX = lengthdir_x(TriRightX, image_angle) + x;

draw_triangle_color(x, y, x+lengthdir_x(coneOfSightLength,image_angle-25), y+lengthdir_y(coneOfSightLength,image_angle-25), x+lengthdir_x(coneOfSightLength,image_angle+25), y+lengthdir_y(coneOfSightLength,image_angle+25), c_fuchsia, c_fuchsia, c_fuchsia, false);
draw_self();