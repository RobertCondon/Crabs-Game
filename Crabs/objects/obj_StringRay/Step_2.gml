/// @description Insert description here
// You can write your code in this editor
if(global.stop == false and stun == false) {
	motion_add(point_direction(x,y, planner.x, planner.y), 1);

	if(speed > 4) {
		speed = 4;	
	}

	target_x = obj_StingRayTargetBox.x;
	target_y = obj_StingRayTargetBox.y;


	with(planner) {
		x = follower.x;
		y = follower.y;
		if(other.AttackInRange == false) {
			scr_GridExe(other.target_x, other.target_y);
		} else {
			speed = 0;	
			other.speed = 0;
		} 
	
	}
	with(obj_StingRayTargetBox) {
		follow = other.GotPlayer;	
	}
} else {
	speed = 0;
	with(planner) {
		speed = 0;	
	}
}