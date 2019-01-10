/// @description Insert description here
// You can write your code in this editor
motion_add(point_direction(x,y, planner.x, planner.y), 1);

if(speed > 4) {
	speed = 4;	
}

target_x = obj_StingRayTargetBox.x;
target_y = obj_StingRayTargetBox.y;

with(planner) {
	x = follower.x;
	y = follower.y;
	scr_GridExe(other.target_x, other.target_y);
}