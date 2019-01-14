/// @description Insert description here
// You can write your code in this editor
if(follow == false) {
	if(ChangeOver == true) {
		x = PreFollowX;
		y = PreFollowY;
		ChangeOver = false;
	}
	if(distance_to_object(obj_StingRayPlanner) < 10) {
		CurrentCords += 1;
		if(CurrentCords >= MaxCords) {
			CurrentCords = 0;
		}
		CurrentList = CordsList[CurrentCords];
		x = CurrentList[0];
		y = CurrentList[1];
	}
} else {
	if(ChangeOver == false) {
		PreFollowX = x;
		PreFollowY = y;	
	}
	x = obj_Player.x;	
	y = obj_Player.y;	
	ChangeOver = true;
}