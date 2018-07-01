/// @description Insert description here
// You can write your code in this editor
if global.stop = false{
	if(place_meeting(x+MoveBy, y, o_Wall)){
		MoveBy = MoveBy*-1
	}
	x += MoveBy
	if(place_meeting(x, y-3, obj_Player)){
		obj_Player.MoveBy = MoveBy
	}
}
