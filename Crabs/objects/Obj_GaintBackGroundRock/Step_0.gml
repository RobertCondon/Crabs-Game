/// @description Insert description here
// You can write your code in this editor
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
camera_x = camera_get_view_x(view_camera[0]) 
alarm[0] = 1
change = old_camera_x - camera_x 
if change < 0{
	x = x + (change*100) 
}
if change > 0{
	x = x + (change*100) 
}