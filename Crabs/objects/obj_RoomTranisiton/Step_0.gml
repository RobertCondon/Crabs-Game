/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Player) < 10) {
	obj_Camera.ToWideBack = 2367;
	obj_Camera.ToWideForward = 20000;
	obj_Camera.DiviedBy = 10
	if(obj_Player.StopMovement == false) {
		alarm[0] = 60;	
	}
	obj_Player.StopMovement = true;
}

