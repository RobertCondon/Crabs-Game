/// @description Insert description here
// You can write your code in this editor
if Touched == false{
	if place_meeting(x, y, obj_Player){
		Touched = true
		alarm[1] = 5
		obj_Player.bang -= lengthdir_x(2, point_direction(o_Player.x, o_Player.y, x, y)) ;
		obj_Player.Vbang -= lengthdir_y(2 , point_direction(o_Player.x, o_Player.y, x, y)) ;	
	}
}
if (!place_meeting(x, y, obj_Player)){
	alarm[0] = 60
}