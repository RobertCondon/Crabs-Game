/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if global.stop = false{
	collisionSquare = collision_rectangle(x + x_Width-5, y + y_Height, x - x_Width +5, y - y_Height - 1, obj_Player, false, false)
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
		if(Shocking == false) {
			alarm[0] = 20;
			Shocking = true;
		}
		if(Act_Shocking == true) {
			sprite_index = Spr_Eel_Shock;
			image_speed = 1;
			image_index = 2;
			Act_Shocking = false;
		}
		
	}
}
if(sprite_index == Spr_Eel_Shock) {
	if(image_index == 1) {
		sprite_index = Spr_Eel_Moving;
		Shocking = false;
	}
	if(image_index >= 10 and place_meeting(obj_Player.x, obj_Player.y, collisionSquare)) {
		script_execute(scr_HitBounce, obj_ElectricEel, 2)
	}
}
