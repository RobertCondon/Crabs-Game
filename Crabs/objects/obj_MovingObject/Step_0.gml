/// @description Insert description here
// You can write your code in this editor
if global.stop = false{
	collisionSquare = collision_rectangle(x + x_Width, y + y_Height, x - x_Width -1, y - y_Height - 1, obj_Player, false, false)
	if(place_meeting(x+MoveBy, y, o_Wall)){
		MoveBy = MoveBy*-1
	}
	if(place_meeting(x+MoveBy, y, obj_Player)){
		if(obj_Player.HittingWall == true){
			MoveBy = MoveBy*-1
		}
	}
	x += MoveBy
	if(place_meeting(obj_Player.x, obj_Player.y, collisionSquare)){
		obj_Player.MoveBy = MoveBy
	}
}
