/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Player) < 10) {
	/*obj_Camera.ToWideBack = 2367;
	obj_Camera.ToWideForward = 20000;
	obj_Camera.DiviedBy = 10
	if(obj_Player.StopMovement == false) {
		alarm[0] = 60;	
	}*/
	if(obj_Player.StopMovement == false) {
		with(instance_create_depth(x,y,9999, obj_RoomSlide)) {
			room_second = other.RoomGoTo;	
			obj_Player.StopMovement = true;
		}
	}
}

